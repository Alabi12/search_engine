class SearchDataController < ApplicationController
  before_action :set_search_datum, only: %i[show edit update destroy]

  # GET /search_data or /search_data.json
  # def index
  #   @search_data = SearchDatum.all
  # end

  # GET /search_data/1 or /search_data/1.json
  def show; end

  # # GET /search_data/new
  # def new
  #   @search_datum = SearchDatum.new
  # end

  # GET /search_data/1/edit
  def edit; end

  # POST /search_data or /search_data.json
  def create
    @user = current_user
    @article = Article.find(params[:article_id])
    @search_datum = SearchDatum.new(user_id: @user.id, article_id: article.id)

  #   respond_to do |format|
  #     if @search_datum.save
  #       format.html { redirect_to search_datum_url(@search_datum), notice: 'Search datum was successfully created.' }
  #       format.json { render :show, status: :created, location: @search_datum }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @search_datum.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  respond_to do |format|
    format.html do
      if @search_datum.save
        flash[:success] = 'Searched saved successfully'

        redirect_to "/users/#{@user.id}/article/#{@article.id}"
      else
        flash.now[:error] = 'Error: Like could not be saved'
      end
    end
  end
end

  # PATCH/PUT /search_data/1 or /search_data/1.json
  def update
    respond_to do |format|
      if @search_datum.update(search_datum_params)
        format.html { redirect_to search_datum_url(@search_datum), notice: 'Search datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @search_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_data/1 or /search_data/1.json
  def destroy
    @search_datum.destroy

    respond_to do |format|
      format.html { redirect_to search_data_url, notice: 'Search datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_search_datum
    @search_datum = SearchDatum.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def search_datum_params
    params.require(:search_datum).permit(:user_id, :article_id)
  end
end
