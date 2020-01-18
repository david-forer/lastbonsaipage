class Lastbonsaipage::Bonsaiscrape 
    attr_accessor  :title, :price, :url, :description

    @@all = []

    def initialize(title, price, url, description)
        @title = title
        @price = price
        @url = url
        @description = description
        @bonsaiscrape_details = []

        save

    end

    def self.all
        Lastbonsaipage::Scraper.scrape_bonsaiscrape_details if @@all.empty?
        @@all
    end


    def save 
        @@all << self
    end

end