import scrapy
import requests
from scrapy.http import Request
from time import sleep
import csv
from dateutil import parser as dateparser
from dateutil.parser import parse

URL_yc = "https://www.amazon.com/Yankee-Candle-Large-Lemon-Lavender/product-reviews/B000WQZ5PC/ref=cm_cr_arp_d_paging_btm_next_2?ie=UTF8&reviewerType=all_reviews&pageNumber=%d"   
starting_number_yc = 1
number_of_pages_yc = 500
URL_cp = "https://www.amazon.com/Chesapeake-Bay-Candle-Laughter-Cranberry/product-reviews/B01N0RSCW2/ref=cm_cr_arp_d_paging_btm_next_2?ie=UTF8&reviewerType=all_reviews&pageNumber=%d"
starting_number_cp = 1
number_of_pages_cp = 438


class AmazonSpiderSpider(scrapy.Spider):
    name = 'amazon_spider'
    allowed_domains = ['amazon.com']
    start_urls = [URL_yc % starting_number_yc, URL_cp % starting_number_cp]
    def __init__(self):
        self.page_number = starting_number_yc

    def start_requests(self):
        for i in range (self.page_number, number_of_pages_yc, +1):
            yield scrapy.Request(URL_yc % i, self.parse)
        for i in range (self.page_number, number_of_pages_cp, +1):
            yield scrapy.Request(URL_cp % i, self.parse)

    def parse(self, response):
        for row in response.css('div.review'):
            item = {}

            #item['author'] = row.css('span.a-profile-name::text').extract_first()

            rating = row.css('i.review-rating > span::text').extract_first().strip().split(' ')[0]
            item['rating'] = int(float(rating.strip().replace(',', '.')))

            #item['title'] = row.css('span.review-title > span::text').extract_first()
            created_date = row.css('span.review-date::text').extract_first().strip().split('on ')[-1]
            item['year'] = dateparser.parse(created_date).strftime('%Y')
            item['month'] = dateparser.parse(created_date).strftime('%m')

            created_loc = row.css('span.review-date::text').extract_first().strip().split('in ')[-1]
            item['location'] = created_loc[4] + created_loc[11] 
            

            #review_content = row.css('div.reviewText ::text').extract()
            #review_content = [rc.strip() for rc in review_content if rc.strip()]
            #item['content'] = ', '.join(review_content)

            yield item
