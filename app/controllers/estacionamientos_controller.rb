class EstacionamientosController < ApplicationController
    
before_filter :authenticate_user! 


  # GET /estacionamientos
  # GET /estacionamientos.json
  def index
    @estacionamientos = Estacionamiento.all

    @json = Estacionamiento.all.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estacionamientos }
    end
  end

  # GET /estacionamientos/1
  # GET /estacionamientos/1.json
  def show
    @estacionamiento = Estacionamiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estacionamiento }
    end
  end

  # GET /estacionamientos/new
  # GET /estacionamientos/new.json
  def new
    @estacionamiento = Estacionamiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estacionamiento }
    end
  end

  # GET /estacionamientos/1/edit
  def edit
    @estacionamiento = Estacionamiento.find(params[:id])
  end

  # POST /estacionamientos
  # POST /estacionamientos.json
  def create
    @estacionamiento = Estacionamiento.new(params[:estacionamiento])

    respond_to do |format|
      if @estacionamiento.save
        format.html { redirect_to @estacionamiento, notice: 'Estacionamiento was successfully created.' }
        format.json { render json: @estacionamiento, status: :created, location: @estacionamiento }
      else
        format.html { render action: "new" }
        format.json { render json: @estacionamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estacionamientos/1
  # PUT /estacionamientos/1.json
  def update
    @estacionamiento = Estacionamiento.find(params[:id])

    respond_to do |format|
      if @estacionamiento.update_attributes(params[:estacionamiento])
        format.html { redirect_to @estacionamiento, notice: 'Estacionamiento was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @estacionamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estacionamientos/1
  # DELETE /estacionamientos/1.json
  def destroy
    @estacionamiento = Estacionamiento.find(params[:id])
    @estacionamiento.destroy

    respond_to do |format|
      format.html { redirect_to estacionamientos_url }
      format.json { head :ok }
    end
  end

  def contador
    @estacionamientos = Estacionamiento.all
  end
  
  def ingreso
      @estacionamiento = Estacionamiento.find(params[:id])
      Estacionamiento.transaction do
        @estacionamiento.ingreso
        @estacionamiento.save
      end
      redirect_to estacionamientos_contador_url
  end
  
  def salida
      @estacionamiento = Estacionamiento.find(params[:id])
      Estacionamiento.transaction do
        @estacionamiento.salida
        @estacionamiento.save
      end
      redirect_to estacionamientos_contador_url
  end

  def sendx
     #@estacionamiento = Estacionamiento.find(params[:id])
    @user = "eddysz2000@gmail.com" #aqui se envián los emails
    #@user = "alecs_alecs@hotmail.com"
    UserMailer.welcome_email(@user).deliver
    redirect_to estacionamientos_contador_url
  end
  
end