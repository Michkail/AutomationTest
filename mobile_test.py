import time
from appium import webdriver

desired_caps = {"platformName": "Android",
                "deviceName": "",
                "appPackage": "",
                "appActivity": ""}

driver = webdriver.Remote("http://100.78.11.44:5000/login", desired_caps)
time.sleep(5)


def login_try():
    username = driver.find_element("username")
    password = driver.find_element("password")
    login_button = driver.find_element("login_button")

    username.send_keys("mobile9")
    password.send_keys("loremipsum")
    login_button.click()

    success_message = driver.find_element("success_message")
    assert success_message.text == "Login successfully"
    raise "Login test passed"


login_try()
