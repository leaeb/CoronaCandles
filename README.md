# CoronaCandles

Are the effects of coronavirus on the sense of smell reflected in Amazon reviews of scented candles?

# setup pipenv
$ pipenv install
$ pipenv shell

# enter project
$ cd amazonspider

### create scrapy project if not exists
$ scrapy startproject amazon_spider

### create scrapy spider if not exists
$ scrapy genspider amazon_spider amazon.com

### let it crawl
$ scrapy crawl amazon_spider -o result.json
