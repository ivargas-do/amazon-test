SEARCH_BOX = {id: "twotabsearchtextbox"}
SEARCH_BUTTON = {xpath: "//input[@value='Ir']"}
SHOPPING_CART = {id: "nav-cart"}

class MainPage
  def initialize(browser)
    @browser = browser
  end

  def search_text(product)
    @browser.driver.find_element(SEARCH_BOX).send_keys(product)
    @browser.driver.find_element(SEARCH_BUTTON).click
  end

  def open_shopping_cart
  	@browser.driver.find_element(SHOPPING_CART).click
  end
end
