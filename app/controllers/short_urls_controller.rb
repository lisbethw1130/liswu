class ShortUrlsController < ApplicationController
  before_action :set_short_url, only: [:show, :edit, :update, :destroy]

  # GET /short_urls
  # GET /short_urls.json
  def index
    @short_urls = ShortUrl.all
  end

  # GET /short_urls/1
  # GET /short_urls/1.json
  def show
  
  end

  # GET /short_urls/new
  def new
    @short_url = ShortUrl.new
  end

  # GET /short_urls/1/edit
  def edit
  end
  
  # POST /short_urls
  # POST /short_urls.json
  def create
    @short_url = ShortUrl.new(short_url_params)
  
    if @short_url.save
      redirect_to @short_url, notice: 'Short url was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /short_urls/1
  # PATCH/PUT /short_urls/1.json
  def update
    if @short_url.update(short_url_params)
      redirect_to @short_url, notice: 'Short url was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /short_urls/1
  # DELETE /short_urls/1.json
  def destroy
    @short_url.destroy
    respond_to do |format|
      format.html { redirect_to short_urls_url, notice: 'Short url was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def redirection
    @short_url = ShortUrl.find_by({ url: params[:short_url]})
    return render plain: 'QQ something wrong', status: 404 if @short_url.nil?
    redirect_to @short_url.original_url, status: 302
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_short_url
      @short_url = ShortUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def short_url_params
      params.require(:short_url).permit(:url, :original_url)
    end
end
