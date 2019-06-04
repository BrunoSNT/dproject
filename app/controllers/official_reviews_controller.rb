class OfficialReviewsController < ApplicationController
  before_action :set_official_review, only: [:show, :edit, :update, :destroy]

  # GET /official_reviews
  # GET /official_reviews.json
  def index
    @official_reviews = OfficialReview.all
  end

  # GET /official_reviews/1
  # GET /official_reviews/1.json
  def show
  end

  # GET /official_reviews/new
  def new
    @official_review = OfficialReview.new
  end

  # GET /official_reviews/1/edit
  def edit
  end

  # POST /official_reviews
  # POST /official_reviews.json
  def create
    @official_review = OfficialReview.new(official_review_params)

    respond_to do |format|
      if @official_review.save
        format.html { redirect_to @official_review, notice: 'Official review was successfully created.' }
        format.json { render :show, status: :created, location: @official_review }
      else
        format.html { render :new }
        format.json { render json: @official_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /official_reviews/1
  # PATCH/PUT /official_reviews/1.json
  def update
    respond_to do |format|
      if @official_review.update(official_review_params)
        format.html { redirect_to @official_review, notice: 'Official review was successfully updated.' }
        format.json { render :show, status: :ok, location: @official_review }
      else
        format.html { render :edit }
        format.json { render json: @official_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /official_reviews/1
  # DELETE /official_reviews/1.json
  def destroy
    @official_review.destroy
    respond_to do |format|
      format.html { redirect_to official_reviews_url, notice: 'Official review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_official_review
      @official_review = OfficialReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def official_review_params
      params.require(:official_review).permit(:client_id, :official_rating, :official_review)
    end
end
