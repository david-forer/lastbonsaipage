class Lastbonsaipage::CLI
    
    
    def start
        puts "\nWelcome to the Jungle\n"
        get_bonsaiscrape_details
        list_bonsaiscrape_details
    end
    
    
    def get_bonsaiscrape_details
        @bonsaiscrape_details = Lastbonsaipage::Bonsaiscrape.all
        # @bonsai_details = ['title', 'description', 'funny']
       
    end 
   
    def list_bonsaiscrape_details
        @bonsaiscrape_details.each do |bonsaiscrape_details|
            puts "\n#{bonsaiscrape_details.title}\n"
            puts "\n#{bonsaiscrape_details.price}\n"
            puts "\n#{bonsaiscrape_details.url}\n"
            puts "\n#{bonsaiscrape_details.description}\n" 
        end

    end
end