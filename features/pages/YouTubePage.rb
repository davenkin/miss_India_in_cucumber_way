class YouTubePage
  attr_accessor :search_filed, :search_button

  YOUTUBE_URL = "http://www.youtube.com/"

  def initialize(browser)
    @browser = browser
    @search_filed = @browser.text_field(:name => "search_query")
    @search_button = @browser.button(:id => "search-btn")
  end

  def method_missing(sym, *args, &block)
    @browser.send sym, *args, &block
  end

  def visit
    @browser.goto YOUTUBE_URL
  end


  def search_for key_word
    @search_filed.set key_word
    @search_button.click
  end

  def watch_video video_url
    @browser.goto video_url
  end

  def unique_array(links)
    links.compact!
    links.uniq!
  end

  def get_video_links
    links = @browser.links.collect { |link| link.href if link.href.include? 'http://www.youtube.com/watch?' }
    unique_array(links)
    links
  end

  def watch_random_video
     links = get_video_links
     rand_num = rand(links.size)
     watch_video links[rand_num]
  end

  def put_video_text
    links = @browser.links.collect { |link| link if link.href.include? 'http://www.youtube.com/watch?' }

    unique_array links
    links.each {|link| puts link.text}
  end

end
