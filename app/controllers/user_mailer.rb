class UserMailer < ActionMailer::Base
  default :from => "eddysz2000@gmail.com"
 
  def welcome_email(user)
    @user = user
    @url  = "http://tdew-estacionamientos.heroku.com/login"
    @name = "Eddy Sanchez"
    @login = "test_login"
    mail(:to => user, :subject => "Mensaje de Notificacion")
  end
end