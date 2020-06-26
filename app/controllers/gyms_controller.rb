class GymsController < ApplicationController

  before_action :set_gym, only: [:show,:edit,:destroy,:update]

  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.create(gym_params)
    redirect_to gym_path(@gym)
  end

  private
  def gym_params
    params.require(:gym).permit(:name, :city)
  end

  def set_gym
    @gym = Gym.find(params[:id])
  end

end
