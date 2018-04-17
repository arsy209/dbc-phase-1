# The provided files will be loaded when this file executes.
# Require any additional files that have been created.
require_relative 'html_whitespace_cleaner'
require_relative 'post'
require_relative 'comment'
require_relative 'item_opener'

require 'nokogiri'

html = File.read('html-samples/hacker-news-post.html')
clean_html = HTMLWhitespaceCleaner.clean(html)
nokogiri_document = Nokogiri.parse(clean_html)


authors = nokogiri_document.css('span.comhead a:first-child').children.text
split_authors = authors.split('1224 days ago')[1..-1]

comments = nokogiri_document.css('span.comment').inner_text
split_comments = comments.split('-----')
comment_array = []

for i in 0...split_comments.length
  comment_array << Comment.new(text: split_comments[i], author: split_authors[i])
end


comment_array.each do |comment|
  comment.display
  puts
end



