class Movie < ApplicationRecord



    def self.test 
        require "uri"
        require "net/http"
        
        url = URI("http://www.omdbapi.com/?i=tt3896198&apikey=bad9a95")
        
        http = Net::HTTP.new(url.host, url.port);
        request = Net::HTTP::Get.new(url)
        
        response = http.request(request)
        puts response.read_body

    end
end
