# CoronaCandles

Are the effects of coronavirus on the sense of smell reflected in Amazon reviews of scented candles?

### create scrapy project
$ scrapy startproject amazon_spider

### create scrapy spider
$ scrapy genspider amazon_spider amazon.com

### let it crawl
$ scrapy crawl amazon_spider -o result.json
