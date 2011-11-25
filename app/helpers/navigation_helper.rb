module NavigationHelper
  
  def status_image(estacionamiento)
    if estacionamiento.porcentaje > 66
  	  "red.png"
  	elsif estacionamiento.porcentaje < 33
  		"green.png"
  	else
  		"yellow.png"
  	end
  end
  
end
