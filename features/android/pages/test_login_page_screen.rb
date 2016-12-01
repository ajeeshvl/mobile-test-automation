USERNAME_TEXT  ||=  "* id:'username_text_input'"
PASSWORD_TEXT  ||=  "* id:'password_text_input'"

class TestLoginPageScreen < ADFBasePage

  attr_accessor :login_button, :username_text, :password_text

  def initialize
    @username_text  = load_textfield(USERNAME_TEXT)
    @password_text  = load_textfield(PASSWORD_TEXT)
  end
end