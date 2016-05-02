class PublisherHousesController < ApplicationController
  before_action :set_publisher_house, only: [:show, :edit, :update, :destroy]

  # GET /publisher_houses
  # GET /publisher_houses.json
  def index
    @publisher_houses = PublisherHouse.order(:name)
  end

  # GET /publisher_houses/1
  # GET /publisher_houses/1.json
  def show
  end

  # GET /publisher_houses/new
  def new
    @publisher_house = PublisherHouse.new
  end

  # GET /publisher_houses/1/edit
  def edit
  end

  # POST /publisher_houses
  # POST /publisher_houses.json
  def create
    @publisher_house = PublisherHouse.new(publisher_house_params)

    respond_to do |format|
      if @publisher_house.save
        format.html { redirect_to @publisher_house, notice: 'Publisher house was successfully created.' }
        format.json { render :show, status: :created, location: @publisher_house }
      else
        format.html { render :new }
        format.json { render json: @publisher_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publisher_houses/1
  # PATCH/PUT /publisher_houses/1.json
  def update
    respond_to do |format|
      if @publisher_house.update(publisher_house_params)
        format.html { redirect_to @publisher_house, notice: 'Publisher house was successfully updated.' }
        format.json { render :show, status: :ok, location: @publisher_house }
      else
        format.html { render :edit }
        format.json { render json: @publisher_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publisher_houses/1
  # DELETE /publisher_houses/1.json
  def destroy
    @publisher_house.destroy
    respond_to do |format|
      format.html { redirect_to publisher_houses_url, notice: 'Publisher house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publisher_house
      @publisher_house = PublisherHouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publisher_house_params
      params.require(:publisher_house).permit(:name)
    end
end
