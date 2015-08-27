# This is a template for a Ruby scraper on morph.io (https://morph.io)
# including some code snippets below that you should find helpful

# require 'scraperwiki'
require 'mechanize'

agent = Mechanize.new

# Read in a page
page = agent.get("https://www.planningalerts.org.au/applications/552641")

raise if page.at('#comments-area h4').text != "13 Comments"
