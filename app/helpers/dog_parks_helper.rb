module DogParksHelper

  def map(lat, lon)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{lat},#{lon}&zoom=12&size=600x300&maptype=roadmap&markers=color:red%7Clabel:S%7C#{lat},#{lon}&visible=Austin,TX&key=#{Rails.application.secrets.google_api_key}".html_safe
  end
end
