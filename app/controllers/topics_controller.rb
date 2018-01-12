class TopicsController < ApplicationController
  before_action :load_workshop
  before_action :load_topic, only: [:show, :edit, :update, :destroy]

  def new
    @topic = @workshop.topics.new
  end

  def create
    @topic = @workshop.topics.new topic_params
    if @topic.save
      redirect_to workshop_path(@workshop), notice: 'Topic was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to workshop_path(@workshop), notice: 'Topic was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to workshop_path(@workshop), notice: 'Topic was successfully destroyed.'
  end

  private

  def load_workshop
    @workshop = Workshop.find params[:workshop_id]
  end

  def load_topic
    @topic = @workshop.topics.find params[:id]
  end

  def topic_params
    params.require(:topic).permit!
  end
end
