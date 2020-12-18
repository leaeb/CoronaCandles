# CoronaCandles

## create scrapy project
$ scrapy startproject amazon_spider

## create scrapy spider
$ scrapy genspider amazon_spider amazon.com

## let it crawl
$ scrapy crawl amazon_spider -o result.json
