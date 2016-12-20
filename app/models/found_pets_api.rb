class FoundPetsAPI

  def initialize
    @fetcher = SODA::Client.new({domain: 'https://data.austintexas.gov/resource/hye6-gvq2.json', app_token: 'SMGam36XWqQReih2fNKQ8EsE6'})
  end

  def pets
    @fetcher.get('https://data.austintexas.gov/resource/hye6-gvq2.json')
  end

  def dogs
    @fetcher.get('https://data.austintexas.gov/resource/hye6-gvq2.json', {"$where" => "type = 'Dog'"})
  end

  def cats
    @fetcher.get('https://data.austintexas.gov/resource/hye6-gvq2.json', {"$where" => "type = 'Cat'"})
  end
end