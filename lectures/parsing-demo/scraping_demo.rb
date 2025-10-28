require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com


url = "https://www.bbcgoodfood.com/search?q=chicken"
# 1. Visitar o site
html_content = URI.parse(url).read
# 1.1 Parse para algo trabalhável
html_doc = Nokogiri::XML.parse(html_content)
# p html_doc
# 2. Identificar as informações para scrape
# 3. Scrape
html_doc.search(".layout-md-rail__primary .card__content a").each do |element|
  p element.text
  p element.attribute("href").value
end
