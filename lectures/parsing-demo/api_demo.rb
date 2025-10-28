require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/dedemenezes"

# Fazer um request para visitar a página (igual no browser)
html_content = URI.parse(url).read
# p html_content
# PARSE o conteúdo página para algo trabalhável em Ruby (Objeto ruby)
user = JSON.parse(html_content)

# Só lazer!
p user["avatar_url"]
