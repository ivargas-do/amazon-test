ADD_BUTTON = {id: "add-to-cart-button"}

class ProductPage
  def initialize(browser)
    @browser = browser
  end

  def add_to_cart
    @browser.driver.find_element(ADD_BUTTON).click
  end
end
