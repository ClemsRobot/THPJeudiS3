class Scraper
  attr_accessor :url
  
  def initialize (url)
    @url = url
  end

  def get_info
    tab = Array.new
    page = Nokogiri::HTML(open(@url))
    page_01 = page.xpath('//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
    if (page_01 != "")
      mail = page_01
    else
      mail = "pas d'email"
    end
    commune = page.xpath('/html/body/div/main/section[1]/div/div/div/h1').text.slice(0..-9)
    code_postal = page.xpath('/html/body/div/main/section[1]/div/div/div/h1').text.slice(-5..-1)
    tab[0] = mail
    tab[1] = commune
    tab[2] = code_postal
    return tab
  end

end
