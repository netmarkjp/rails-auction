class BiddingsController < ApplicationController
  # GET /biddings
  # GET /biddings.json
  def index
    @biddings = Bidding.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @biddings }
    end
  end

  # GET /biddings/1
  # GET /biddings/1.json
  def show
    @bidding = Bidding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bidding }
    end
  end

  # GET /biddings/new
  # GET /biddings/new.json
  def new
    @bidding = Bidding.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bidding }
    end
  end

  # GET /biddings/1/edit
  def edit
    @bidding = Bidding.find(params[:id])
  end

  # POST /biddings
  # POST /biddings.json
  def create
    @bidding = Bidding.new(params[:bidding])

    respond_to do |format|
      if @bidding.save
        format.html { redirect_to @bidding, notice: 'Bidding was successfully created.' }
        format.json { render json: @bidding, status: :created, location: @bidding }
      else
        format.html { render action: "new" }
        format.json { render json: @bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /biddings/1
  # PUT /biddings/1.json
  def update
    @bidding = Bidding.find(params[:id])

    respond_to do |format|
      if @bidding.update_attributes(params[:bidding])
        format.html { redirect_to @bidding, notice: 'Bidding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biddings/1
  # DELETE /biddings/1.json
  def destroy
    @bidding = Bidding.find(params[:id])
    @bidding.destroy

    respond_to do |format|
      format.html { redirect_to biddings_url }
      format.json { head :no_content }
    end
  end
end
