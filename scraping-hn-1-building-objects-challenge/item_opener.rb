 
 module WebsiteOpener

  def self.post_parcer(filename)
    load 'html_whitespace_cleaner.rb'
    html = File.read('html-samples/hacker-news-post.html')
    clean_html = HTMLWhitespaceCleaner.clean(html)
    nokogiri_document = Nokogiri.parse(clean_html)
    post = {}
    post[:title] = nokogiri_document.css('.title > a').first.inner_text
    post[:url] = nokogiri_document.css('.title > a').first['href']
    post[:points] = nokogiri_document.css('.subtext > span:first-child').first.inner_text.slice(/\A\d*/)
    post[:author_username] = nokogiri_document.css('.subtext > a').first.inner_text
    post[:item_id ] = nokogiri_document.css('.subtext > span:first-child').first.attributes["id"].value.slice(/\d*\z/)
    post
  end

  def self.comment_parcer(filename)
    load 'html_whitespace_cleaner.rb'
    html = File.read('html-samples/hacker-news-post.html')
    clean_html = HTMLWhitespaceCleaner.clean(html)
    nokogiri_document = Nokogiri.parse(clean_html)
    comment = {}
    comment[:author] = nokogiri_document.css('span.comhead a')[1].inner_text
    comment[:text] = nokogiri_document.css('span.comment')[0].inner_text
    comment
  end

  def self.scrape_all_the_comments(filename)
    comments_arr = []
    main_comment = nokogiri_document.css('tr.athing')
  end
end