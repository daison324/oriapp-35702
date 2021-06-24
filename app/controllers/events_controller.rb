class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]


  def index
    #@events = event.includes(:user).order("created_at DESC")
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render new_event_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @item.update(event_params)
      redirect_to event_path
     else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end

  
  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:image, :event_title, :text, :group_name, :prefecture_id, ).merge(user_id: current_user.id)
  end


  def contributor_confirmation
    redirect_to root_path unless current_user == @event.user
  end

end