class UserMailer < ActionMailer::Base
  default from: "eddysz2000@gmail.com"

  def welcom_email(user)
  	@user = user
  	@url  = "http://www.gmail.com"
  	mail(:to=>user.email, :subject=>"Bienvenido")
  	
  end

end
