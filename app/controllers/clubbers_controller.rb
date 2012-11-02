class ClubbersController < ApplicationController

  before_filter :authenticate_user!

  # GET /clubbers
  # GET /clubbers.json
  def index
    @clubbers = Clubber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clubbers }
    end
  end

  # GET /clubbers/1
  # GET /clubbers/1.json
  def show
    @clubber = Clubber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clubber }
    end
  end

  # GET /clubbers/new
  # GET /clubbers/new.json
  def new
    @clubber = Clubber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clubber }
    end
  end

  # GET /clubbers/1/edit
  def edit
    @clubber = Clubber.find(params[:id])
  end

  # POST /clubbers
  # POST /clubbers.json
  def create
    @clubber = Clubber.new(params[:clubber])

    respond_to do |format|
      if @clubber.save
        format.html { redirect_to @clubber, notice: 'Clubber was successfully created.' }
        format.json { render json: @clubber, status: :created, location: @clubber }
      else
        format.html { render action: "new" }
        format.json { render json: @clubber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clubbers/1
  # PUT /clubbers/1.json
  def update
    @clubber = Clubber.find(params[:id])

    respond_to do |format|
      if @clubber.update_attributes(params[:clubber])
        format.html { redirect_to @clubber, notice: 'Clubber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clubber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubbers/1
  # DELETE /clubbers/1.json
  def destroy
    @clubber = Clubber.find(params[:id])
    @clubber.destroy

    respond_to do |format|
      format.html { redirect_to clubbers_url }
      format.json { head :no_content }
    end
  end
end
