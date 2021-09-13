class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end 

  def create
    @activity = Activity.new(activity_params)
    
    if @activity.save
      @subjects = Subject.where(:id => params[:subjects_id])
      @activity.subjects << @subjects 
      redirect_to @activity
    else
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      @subjects = Subject.where(:id => params[:subjects_id])
      @activity.subjects.clear
      @activity.subjects << @subjects 
      redirect_to @activity
    else
      render :edit
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    redirect_to root_path
  end 

  private
    def activity_params
      params.require(:activity).permit(:date, :subjects_id, :type_id, :link, :duration, :comment)
    end
end