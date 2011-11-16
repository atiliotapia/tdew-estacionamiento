class NotificacionesController < ApplicationController
  # GET /notificaciones
  # GET /notificaciones.json
  def index
    @notificaciones = Notificacione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notificaciones }
    end
  end

  # GET /notificaciones/1
  # GET /notificaciones/1.json
  def show
    @notificacione = Notificacione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notificacione }
    end
  end

  # GET /notificaciones/new
  # GET /notificaciones/new.json
  def new
    @notificacione = Notificacione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notificacione }
    end
  end

  # GET /notificaciones/1/edit
  def edit
    @notificacione = Notificacione.find(params[:id])
  end

  # POST /notificaciones
  # POST /notificaciones.json
  def create
    @notificacione = Notificacione.new(params[:notificacione])

    respond_to do |format|
      if @notificacione.save
        format.html { redirect_to @notificacione, notice: 'Notificacione was successfully created.' }
        format.json { render json: @notificacione, status: :created, location: @notificacione }
      else
        format.html { render action: "new" }
        format.json { render json: @notificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notificaciones/1
  # PUT /notificaciones/1.json
  def update
    @notificacione = Notificacione.find(params[:id])

    respond_to do |format|
      if @notificacione.update_attributes(params[:notificacione])
        format.html { redirect_to @notificacione, notice: 'Notificacione was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @notificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notificaciones/1
  # DELETE /notificaciones/1.json
  def destroy
    @notificacione = Notificacione.find(params[:id])
    @notificacione.destroy

    respond_to do |format|
      format.html { redirect_to notificaciones_url }
      format.json { head :ok }
    end
  end
end
