module NavigationHelper
  
  def status_image(estacionamiento)
    if estacionamiento.porcentaje > 66
  	  	"red.gif"
  	elsif estacionamiento.porcentaje < 33
  		"green.gif"
  	else
  		"yellow.gif"
  	end
  end
  
end
