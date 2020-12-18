import scrapy
import requests
from scrapy.http import Request

URL = "https://www.amazon.com/Yankee-Candle-Large-Lemon-Lavender/product-reviews/B000WQZ5PC/ref=cm_cr_arp_d_viewpnt_rgt?ie=UTF8&reviewerType=all_reviews&filterByStar=critical&pageNumber=%d"   
starting_number = 2
number_of_pages = 2  

class AmazonSpiderSpider(scrapy.Spider):
    name = 'amazon_spider'
    allowed_domains = ['amazon.com']
    start_urls = [URL % starting_number]
    def __init__(self):
        self.page_number = starting_number

    def start_requests(self):
        
        for i in range (self.page_number, number_of_pages, +1):
            yield Request(url = URL % i, callback=self.parse)

    def parse(self, response):
        for row in response.css('div.review'):
            item = {}

            item['author'] = row.css('span.a-profile-name::text').extract_first()

            rating = row.css('i.review-rating > span::text').extract_first().strip().split(' ')[0]
            item['rating'] = int(float(rating.strip().replace(',', '.')))

            item['title'] = row.css('span.review-title > span::text').extract_first()
            created_date = row.css('span.review-date::text').extract_first().strip()
            item['created_date'] = created_date

            review_content = row.css('div.reviewText ::text').extract()
            review_content = [rc.strip() for rc in review_content if rc.strip()]
            item['content'] = ', '.join(review_content)

            yield item
