require 'mechanize'
class Scraping < ApplicationRecord

def self.scrape
      agent = Mechanize.new                  #agentは任意の変数
      page = agent.get("https://answers.ten-navi.com/pharmanews/pharma_category/4/")  #pageは任意の変数 getの引数はサイトのURL
      elements = page.search('.rorate .ttl') #div.idxcol aは取得したい要素  elementsは任意の変数
      elements.each do |element|
        scraping = Scraping.new                      #Fishは任意のクラス、fishは任意のインスタンス
        scraping.title = element.inner_text
        scraping.save
      end
    end
end