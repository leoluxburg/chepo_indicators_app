class SubthemesController < ApplicationController
  before_action :set_subtheme, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /subthemes
  # GET /subthemes.json
  def index
    @subthemes = Subtheme.all
  end

  # GET /subthemes/1
  # GET /subthemes/1.json
  def show
  end

  # GET /subthemes/new
  def new
    @subtheme = Subtheme.new
  end

  # GET /subthemes/1/edit
  def edit
  end

  # POST /subthemes
  # POST /subthemes.json
  def create
    @subtheme = Subtheme.new(subtheme_params)

    respond_to do |format|
      if @subtheme.save
        format.html { redirect_to @subtheme, notice: 'Subtheme was successfully created.' }
        format.json { render :show, status: :created, location: @subtheme }
      else
        format.html { render :new }
        format.json { render json: @subtheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subthemes/1
  # PATCH/PUT /subthemes/1.json
  def update
    respond_to do |format|
      if @subtheme.update(subtheme_params)
        format.html { redirect_to @subtheme, notice: 'Subtheme was successfully updated.' }
        format.json { render :show, status: :ok, location: @subtheme }
      else
        format.html { render :edit }
        format.json { render json: @subtheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subthemes/1
  # DELETE /subthemes/1.json
  def destroy
    @subtheme.destroy
    respond_to do |format|
      format.html { redirect_to subthemes_url, notice: 'Subtheme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtheme
      @subtheme = Subtheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subtheme_params
      params.require(:subtheme).permit(:title, :comment, :theme_id)
    end
end
