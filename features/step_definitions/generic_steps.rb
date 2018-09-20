Given("I am on the amazon landing page") do
  @browser.driver.get ENV["AMAZON_URL"]
end

Given ("I search for a {string}") do |product|
  @main_page = MainPage.new(@browser)
  @main_page.search_text(product)
  @product = product
end

When ("I add the product to the shopping cart") do
  results_page = ResultsPage.new(@browser)
  results_page.select_first_element
  product_page = ProductPage.new(@browser)
  product_page.add_to_cart
end

Then "The product is in the shopping cart" do
  @main_page.open_shopping_cart
  cart_page = CartPage.new(@browser)
  cart_page.product_present?(@product)
end
