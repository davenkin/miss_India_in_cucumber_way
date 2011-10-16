class YouTubePage
  attr_accessor :search_filed, :google_search_button

  YOUTUBE_URL = "http://www.youtube.com/"

  def initialize(browser)
    @browser = browser
    @search_filed = @browser.text_field(:name => "search_query")
    @search_button = @browser.button(:id => "search_btn")
  end

  def method_missing(sym, *args, &block)
    @browser.send sym, *args, &block
  end

  def visit
    @browser.goto YOUTUBE_URLURL
  end


  def search_for key_word
    self.search_filed.set key_word
    self.search_button.click
  end


end