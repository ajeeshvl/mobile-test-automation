USERNAME_TEXT   ||=  "username_text_input"
PASSWORD_TEXT   ||=  "password_text_input"
LOGIN_BUTTON    ||=  "login"
LOGOUT_BUTTON   ||= "logout"
TRYAGAIN_BUTTON ||=  "try again"

class TestLoginPageScreen < ADFBasePage

  attr_accessor :login_button, :username_text, :password_text, :logout_button, :tryagain_button

  def initialize
    @username_text    = load_textfield(USERNAME_TEXT)
    @password_text    = load_textfield(PASSWORD_TEXT)
    @login_button     = load_button(LOGIN_BUTTON)
    @logout_button    = load_button(LOGOUT_BUTTON)
    @tryagain_button  = load_button(TRYAGAIN_BUTTON)
  end
end