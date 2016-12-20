module FoundPetsHelper

  ADDRESS_REGEX = /\{\"address\"\:\"(.*)\",\"city\"\:\"(.*)\",\"sta.*zip\"\:\"(.*)\"}/

  def format_address(address)
    full = address.match ADDRESS_REGEX
    street = full[1].titleize
    city = full[2].capitalize
    zip = full[3]
    "#{street}, #{city}, TX, #{zip}"
  end

  def scraped_image(url)
    Scraper.new.get_image(url)
  end
end
