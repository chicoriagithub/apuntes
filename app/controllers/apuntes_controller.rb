class ApuntesController < ApplicationController
  # GET /apuntes
  # GET /apuntes.json
  def index
    @apuntes = Apunte.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apuntes }
    end
  end

  # GET /apuntes/1
  # GET /apuntes/1.json
  def show
    @apunte = Apunte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apunte }
    end
  end

  # GET /apuntes/new
  # GET /apuntes/new.json
  def new
    @apunte = Apunte.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apunte }
    end
  end

  # GET /apuntes/1/edit
  def edit
    @apunte = Apunte.find(params[:id])
  end

  # POST /apuntes
  # POST /apuntes.json
  def create
    @apunte = Apunte.new(params[:apunte])

    respond_to do |format|
      if @apunte.save
        format.html { redirect_to @apunte, notice: 'Apunte was successfully created.' }
        format.json { render json: @apunte, status: :created, location: @apunte }
      else
        format.html { render action: "new" }
        format.json { render json: @apunte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apuntes/1
  # PUT /apuntes/1.json
  def update
    @apunte = Apunte.find(params[:id])

    respond_to do |format|
      if @apunte.update_attributes(params[:apunte])
        format.html { redirect_to @apunte, notice: 'Apunte was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apunte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apuntes/1
  # DELETE /apuntes/1.json
  def destroy
    @apunte = Apunte.find(params[:id])
    @apunte.destroy

    respond_to do |format|
      format.html { redirect_to apuntes_url }
      format.json { head :no_content }
    end
  end
end
