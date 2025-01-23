class OmdbMovie
  BASE_URL = "http://www.omdbapi.com/"

  attr_reader :title, :year, :genre, :director, :plot, :imdb_id

  def initialize(data)
    @title = data["Title"]
    @year = data["Year"]
    @genre = data["Genre"]
    @director = data["Director"]
    @plot = data["Plot"]
    @imdb_id = data["imdbID"]
  end

  def self.search(query)
    uri = URI(BASE_URL)
    uri.query = URI.encode_www_form({ s: query, apikey: ENV["OMDB_API_KEY"] })

    response = Net::HTTP.get_response(uri)
    data = parse_response(response)

    if data["Search"]
      movies = data["Search"].map do |movie_data|
        details_uri = URI(BASE_URL)
        details_uri.query = URI.encode_www_form({ i: movie_data["imdbID"], apikey: ENV["OMDB_API_KEY"] })
        details_response = Net::HTTP.get_response(details_uri)
        details_data = parse_response(details_response)

        new(details_data)
      end
    else
      []
    end
  end

  private

  def self.parse_response(response)
    if response.is_a?(Net::HTTPSuccess)
      JSON.parse(response.body)
    else
      { "error" => "Failed to fetch data from OMDb API" }
    end
  end
end
