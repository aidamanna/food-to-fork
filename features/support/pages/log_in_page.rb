class LogInPage

  include PageObject

  page_url ENV['LOGIN_URL']

  text_field(:email, id:'auth_user_email')
  text_field(:password, id:'auth_user_password')
  button(:submit, css:'#submit_record__row .btn')
  div(:logged_msg, class:'flash')

  def register
    self.email = ENV['EMAIL']
    self.password = ENV['PASSWORD']
    self.submit
    wait_until { self.logged_msg_element.visible? }
  end

end