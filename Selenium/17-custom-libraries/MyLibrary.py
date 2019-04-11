from robot.libraries.BuiltIn import BuiltIn

def go_to_blog():
  seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
  # following line returns WebDriver initiated in robot-framework
  webdriver = seleniumlib.driver
  webdriver.get("https://adiralashivaprasad.blogspot.in")