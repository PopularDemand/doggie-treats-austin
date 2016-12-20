class DogParkAPI

  def initialize
    @fetcher = SODA::Client.new({domain: 'https://data.austintexas.gov', app_token: 'SMGam36XWqQReih2fNKQ8EsE6'})
  end

  def get_parks
    @fetcher.get('https://data.austintexas.gov/resource/up6y-6ww4.json')
  end

  def save_parks
    parks = get_parks
    # binding.pry
    clean_params = clean_results(parks)
    clean_params.each do |params|
      DogPark.create(params)
    end
  end

  def clean_results(results)
    clean_params = []
    results.each do |park_params|
      park_params = park_params.to_h
      clean_params << {
        name: park_params['name'],
        longitude: park_params['the_geom']['coordinates'][0],
        latitude: park_params['the_geom']['coordinates'][1],
      }
    end
    clean_params
  end

end