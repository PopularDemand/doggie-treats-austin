class Scraper

  def initialize
    @agent = Mechanize.new
  end

  def scrape(url)
    @agent.get(url)
  end

  def get_image(url)
    page = self.scrape(url)
    unless page.images.empty?
      page.images[0]
    else
      []
    end
  end
end