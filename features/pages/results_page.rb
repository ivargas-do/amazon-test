FIRST_ELEMENT = {xpath: "//li[@id='result_0']//img"}

class ResultsPage
  def initialize(browser)
    @browser = browser
  end

  def select_first_element
    @browser.driver.find_element(FIRST_ELEMENT).click
  end
end
