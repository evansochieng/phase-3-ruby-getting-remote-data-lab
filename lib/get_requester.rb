# Write your code here

#require libraries that will be needed
require 'open-uri'
require 'net/http'
require 'json'

#Create a GetRequester class
class GetRequester
    #initialize class with string url
    def initialize(url)
        @url = url
    end

    #method to make get request => return body of response
    def get_response_body
        #parse the url
        uri = URI.parse(@url)
        #make request
        response = Net::HTTP.get_response(uri)

        #return the body of the response
        response.body
    end

    #parse the json response from get request
    def parse_json
        #catch response body
        response = self.get_response_body

        #parse JSON as ruby array/hash
        JSON.parse(response)
    end
end