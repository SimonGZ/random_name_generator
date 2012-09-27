class FirstnamesController < ApplicationController
  # GET /firstnames
  # GET /firstnames.json
  def index
    @firstnames = Firstname.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @firstnames }
    end
  end

  # GET /firstnames/1
  # GET /firstnames/1.json
  def show
    @firstname = Firstname.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @firstname }
    end
  end

  # GET /firstnames/new
  # GET /firstnames/new.json
  def new
    @firstname = Firstname.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @firstname }
    end
  end

  # GET /firstnames/1/edit
  def edit
    @firstname = Firstname.find(params[:id])
  end

  # POST /firstnames
  # POST /firstnames.json
  def create
    @firstname = Firstname.new(params[:firstname])

    respond_to do |format|
      if @firstname.save
        format.html { redirect_to @firstname, notice: 'Firstname was successfully created.' }
        format.json { render json: @firstname, status: :created, location: @firstname }
      else
        format.html { render action: "new" }
        format.json { render json: @firstname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /firstnames/1
  # PUT /firstnames/1.json
  def update
    @firstname = Firstname.find(params[:id])

    respond_to do |format|
      if @firstname.update_attributes(params[:firstname])
        format.html { redirect_to @firstname, notice: 'Firstname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @firstname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firstnames/1
  # DELETE /firstnames/1.json
  def destroy
    @firstname = Firstname.find(params[:id])
    @firstname.destroy

    respond_to do |format|
      format.html { redirect_to firstnames_url }
      format.json { head :no_content }
    end
  end
end
