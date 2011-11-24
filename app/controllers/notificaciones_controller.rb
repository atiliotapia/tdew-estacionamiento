class NotificacionesController < ApplicationController
  # GET /notificaciones
  # GET /notificaciones.json
  def index
    @notificaciones = Notificacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notificaciones }
    end
  end

  # GET /notificaciones/1
  # GET /notificaciones/1.json
  def show
    @notificacion = Notificacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notificacion }
    end
  end

  # GET /notificaciones/new
  # GET /notificaciones/new.json
  def new
    @notificacion = Notificacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notificacion }
    end
  end

  # GET /notificaciones/1/edit
  def edit
    @notificacion = Notificacion.find(params[:id])
  end

  # POST /notificaciones
  # POST /notificaciones.json
  def create
    @notificacion = Notificacion.new(params[:notificacion])

    respond_to do |format|
      if @notificacion.save
        format.html { redirect_to @notificacion, notice: 'Notificacion was successfully created.' }
        format.json { render json: @notificacion, status: :created, location: @notificacion }
      else
        format.html { render action: "new" }
        format.json { render json: @notificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notificaciones/1
  # PUT /notificaciones/1.json
  def update
    @notificacion = Notificacion.find(params[:id])

    respond_to do |format|
      if @notificacion.update_attributes(params[:notificacion])
        format.html { redirect_to @notificacion, notice: 'Notificacion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @notificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notificaciones/1
  # DELETE /notificaciones/1.json
  def destroy
    @notificacion = Notificacion.find(params[:id])
    @notificacion.destroy

    respond_to do |format|
      format.html { redirect_to notificaciones_url }
      format.json { head :ok }
    end
  end
end
