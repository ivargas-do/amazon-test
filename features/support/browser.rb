class Browser
  attr_reader :driver

  def initialize(browser)
    @driver = case browser
              when 'Firefox'
                Selenium::WebDriver.for :firefox
              end
  end

  def close
    driver.close
  end
end