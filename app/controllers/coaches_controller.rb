class CoachesController < ApplicationController

  before_action :load_coach, only: [:show, :edit, :update, :destroy, :add_comment]

  def index
    @coaches = Coach.all
  end

  def new
    @coach = Coach.new    
  end

  def create
    @coach = Coach.new(coach_params)
    if @coach.save
      redirect_to coaches_path, notice: 'Coach was successfully created.'
    else
      render :new
    end
  end

  def show
    @comment = @coach.comments.new
    @comments = @coach.comments
  end

  def edit
  end

  def update
    if @coach.update(coach_params)
      redirect_to coach_path(@coach), notice: 'Coach was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @coach.destroy
    redirect_to coaches_path, notice: 'Coach was successfully destroyed.'          
  end

  private

  def coach_params
    params.require(:coach).permit(:name, :email)
  end

  def load_coach
    @coach = Coach.find(params[:id])    
  end
end
