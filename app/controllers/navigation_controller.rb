class NavigationController < ApplicationController

  def home
	  @estacionamientos = Estacionamiento.all
  end


end
