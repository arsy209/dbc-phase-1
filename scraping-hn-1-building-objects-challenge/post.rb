class Post
attr_reader :title, :url, :points, :author_username, :item_id, :comments

  def initialize(args = {})
    @title = args[:title]
    @url = args[:url]
    @points = args[:points]
    @author_username = args[:author_username]
    @item_id = args[:item_id ]
    @comments = []
  end
end
