class Comment
attr_reader :author, :text

  def initialize(args = {})
    @author = args[:author]
    @text = args[:text]
  end

  def display
    puts "#{text}"
    puts "Posted by: #{author}"
  end
end
