class Lastbonsaipage::Scraper 

    def self.scrape_bonsaiscrape_details

        site = "https://www.bonsaioutlet.com/golden-gate-ficus-bonsai-tree-indoor/"

        doc = Nokogiri::HTML(open(site)) 

        trees = doc.css('div.productDtlPage')
        
        trees.each do |d|
            title =       d.css('h1.productView-title').text.strip
            price =       d.css('div.productView-price').text.strip
            url =         d.css('div.yotpo.bottomLine')[0].attributes['data-url'].text
            description = d.css("div.tab-content p").text.strip
            Lastbonsaipage::Bonsaiscrape.new(title, price, url, description)    
        end

    end


end