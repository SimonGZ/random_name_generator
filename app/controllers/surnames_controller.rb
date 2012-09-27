class SurnamesController < ApplicationController
  # GET /surnames
  # GET /surnames.json
  def index
    @surnames = Surname.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @surnames }
    end
  end

  # GET /surnames/1
  # GET /surnames/1.json
  def show
    @surname = Surname.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @surname }
    end
  end

  # GET /surnames/new
  # GET /surnames/new.json
  def new
    @surname = Surname.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @surname }
    end
  end

  # GET /surnames/1/edit
  def edit
    @surname = Surname.find(params[:id])
  end

  # POST /surnames
  # POST /surnames.json
  def create
    @surname = Surname.new(params[:surname])

    respond_to do |format|
      if @surname.save
        format.html { redirect_to @surname, notice: 'Surname was successfully created.' }
        format.json { render json: @surname, status: :created, location: @surname }
      else
        format.html { render action: "new" }
        format.json { render json: @surname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /surnames/1
  # PUT /surnames/1.json
  def update
    @surname = Surname.find(params[:id])

    respond_to do |format|
      if @surname.update_attributes(params[:surname])
        format.html { redirect_to @surname, notice: 'Surname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @surname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surnames/1
  # DELETE /surnames/1.json
  def destroy
    @surname = Surname.find(params[:id])
    @surname.destroy

    respond_to do |format|
      format.html { redirect_to surnames_url }
      format.json { head :no_content }
    end
  end
end
