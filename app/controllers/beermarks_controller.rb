class BeermarksController < ApplicationController
  before_action :set_beermark, only: %i[ show edit update destroy ]

  # GET /beermarks or /beermarks.json
  def index
    @beermarks = Beermark.all
    @beermark = Beermark.new
    @kinds = Kind.all
    @categories = Category.all
  end

  # GET /beermarks/1 or /beermarzzks/1.json
  def show
  end

  # GET /beermarks/new
  def new
    @beermark = Beermark.new
    @categories = Category.pluck(:name, :id)
  end

  # GET /beermarks/1/edit
  def edit
  end

  # POST /beermarks or /beermarks.json
  def create
    @beermark = Beermark.new(beermark_params)

    respond_to do |format|
      if @beermark.save
        format.html { redirect_to @beermark, notice: "Beermark was successfully created." }
        format.json { render :show, status: :created, location: @beermark }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @beermark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beermarks/1 or /beermarks/1.json
  def update
    respond_to do |format|
      if @beermark.update(beermark_params)
        format.html { redirect_to @beermark, notice: "Beermark was successfully updated." }
        format.json { render :show, status: :ok, location: @beermark }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @beermark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beermarks/1 or /beermarks/1.json
  def destroy
    @beermark.destroy
    respond_to do |format|
      format.html { redirect_to beermarks_url, notice: "Beermark was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beermark
      @beermark = Beermark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beermark_params
      params.require(:beermark).permit(:name, :malts, :alcohol, :category_id, :kind_id)
    end
end
