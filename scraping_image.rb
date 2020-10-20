require 'mechanize'

def a
agent= Mechanize.new
page = agent.get('https://answers.ten-navi.com/pharmanews/pharma_category/4/')
elements = page.search('article a')
elements.each do |ele|
puts ele.get_attribute('href')
end
end