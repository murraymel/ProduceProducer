require 'open-uri'
require 'json'

class Producer
  attr_accessor :produced_by, :artist_name, :similar_to

  
   
  url = "http://api.musicgraph.com/"

api_key = 2a56662308b52733825e158f0ae6f6ad



    raw_response = open(url).read
    result = JSON.parse(raw_response)
    list_from_api = result[]

    array_of_producers = Array.new

    list_from_api.each do |producer_hash|
      p = producer.new
      p. = producer_hash["produced_by"]
      p. = producer_hash["artist_name"]
      p. = producer_hash["similar_to"]
      



      array_of_producers << p
    end

    return array_of_producers
  end