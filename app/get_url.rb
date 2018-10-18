class Get_url
  attr_accessor :url

  def initialize (url, indice)
    @url = url
    @indice = indice
  end

  def get_url
    page = Nokogiri::HTML(open(@url))
    adress = page.css('a.lientxt')[@indice]['href']
    adress = adress.sub(".", "http://annuaire-des-mairies.com")
    return adress
  end

end
