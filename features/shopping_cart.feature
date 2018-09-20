Feature: Add product to shopping cart

Scenario: User adds product to the shopping cart
  Given I am on the amazon landing page
  And I search for a 'Xiaomi MI A2'
  When I add the product to the shopping cart
  Then The product is in the shopping cart
  