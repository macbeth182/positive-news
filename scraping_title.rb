require 'mechanize'
agent= Mechanize.new
page = agent.get('https://answers.ten-navi.com/pharmanews/pharma_category/4/')
elements = page.search('h2')
elements.each do |ele|
  puts ele.inner_text
end
