class GooglePage
  attr_accessor :search_filed, :google_search_button

  URL = "www.google.co.in"

  def initialize(browser)
    @browser = browser
    @search_filed = @browser.text_field(:name => "q")
    @google_search_button = @browser.element_by_xpath("/html/body/div[3]/div/div/div/div/div/div/div[2]/span/form/div/span")
  end

  def method_missing(sym, *args, &block)
    @browser.send sym, *args, &block
  end

  def visit
    @browser.goto URL
  end

  def goto_english_page
    if @browser.link(:text => "English").exist?
       @browser.link(:text => "English").click
   end
  end

  def search_for key_word
    self.search_filed.set key_word
    self.google_search_button.click
  end

  def visit_category_page category
     @browser.link(:text => category).click
  end

end