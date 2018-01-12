class WorkshopsController < ApplicationController
  before_action :load_workshop, only: [:show, :edit, :update, :destroy]

  # GET /workshops
  def index
    @workshops = Workshop.all
  end

  # GET /workshops/1
  def show
    @topics = @workshop.topics
  end

  # GET /workshops/new
  def new
    @workshop = Workshop.new
  end

  # GET /workshops/1/edit
  def edit
  end

  # Workshops /workshops
  def create
    @workshop = Workshop.new(workshop_params)
    if @workshop.save
      redirect_to root_path, notice: 'Workshop was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /workshops/1
  def update
    if @workshop.update(workshop_params)
      redirect_to @workshop, notice: 'Workshop was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /workshops/1
  def destroy
    @workshop.destroy
    redirect_to workshops_url, notice: 'Workshop was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_workshop
      @workshop = Workshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workshop_params
      params.require(:workshop).permit(:title, :description, :start_date, :end_date, :place)
    end
end
