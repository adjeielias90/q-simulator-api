class MockexamsController < ApplicationController
  before_action :set_mockexam, only: [:show, :edit, :update, :destroy]

  # GET /mockexams
  def index
    @mockexams = Mockexam.all
  end

  # GET /mockexams/1
  def show
  end

  # GET /mockexams/new
  def new
    @mockexam = Mockexam.new
  end

  # GET /mockexams/1/edit
  def edit
  end

  # POST /mockexams
  def create
    @mockexam = Mockexam.new(mockexam_params)

    if @mockexam.save
      redirect_to @mockexam, notice: 'Mockexam was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mockexams/1
  def update
    if @mockexam.update(mockexam_params)
      redirect_to @mockexam, notice: 'Mockexam was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mockexams/1
  def destroy
    @mockexam.destroy
    redirect_to mockexams_url, notice: 'Mockexam was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mockexam
      @mockexam = Mockexam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mockexam_params
      params.require(:mockexam).permit(:name, :level_id, :subject_id)
    end
end
