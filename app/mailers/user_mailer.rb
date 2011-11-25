class UserMailer < ActionMailer::Base
  default from: "eddysz2000@gmail.com"

  def welcome_email(alumnos)
  	@user = alumnos
  	@url  = "http://www.gmail.com"
  	mail(:to=>alumnos.codigo+"@upc.edu.pe", :subject=>"Bienvenido")

  end

end
