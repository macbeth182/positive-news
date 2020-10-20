class Scraping
  def self.news_urls
links = []#①linksという配列の空枠を作る
agent= Mechanize.new  #②Mechanizeクラスのインスタンスを生成する
page = agent.get('https://answers.ten-navi.com/pharmanews/')#③映画の全体ページのURLを取得
elements = page.search('.tag ') #④全体ページから映画20件の個別URLのタグを取得
elements.each do |ele|
links << ele.get_attribute('href')
end #⑤個別URLのタグからhref要素を取り出し、links配列に格納する

    links.each do |link|
    get_news('https://answers.ten-navi.com/pharmanews/'+link)
    end
  end

  def self.get_news(link)
    agent = Mechanize.new
    page = agent.get(link)
    title = page.at('h2').inner_text
    article = page.at('article a')[:href] if page.at('article a')
    news = News.new(title: title, article: article)
    news.save
  end
end