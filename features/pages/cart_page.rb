include RSpec::Matchers

SUBTOTAL_LABEL = {id: "sc-subtotal-label-activecart"}
PRODUCT_TITLE = {xpath: "//span[@class='a-size-medium sc-product-title a-text-bold']"}

class CartPage
  def initialize(browser)
    @browser = browser
  end

  def product_present?(text)
    expect(@browser.driver.find_element(SUBTOTAL_LABEL).text.include?('Subtotal (1 producto)')).to be(true)
    expect(@browser.driver.find_element(PRODUCT_TITLE).text.include?(text)).to be(true)
  end
end
