module Spotify::Artist
    class Search
      # rescue Stripe::InvalidRequestError ((Status 400) (Request...
      def self.call!(artist_name)
        new(artist_name).send(:call!)
      end
  
      private
  
      attr_reader :artist_name
  
      def initialize(artist_name)
      @artist_name = artist_name
      end
  
      def call!
        RSpotify::Artist.search(artist_name)
      end
  
    end
  end
  