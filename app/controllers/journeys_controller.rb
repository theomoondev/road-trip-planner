class JourneysController < ApplicationController
  # before_action :require_user
  
  def index
    # @journeys = @journeys.where(user_id: current_user.id) if logged_in?
    @journeys = Journey.all
    @journeys = @journeys.order(created_at: :desc)
    @journeys = @journeys.includes(:destinations)
    @journeys = @journeys.includes(:user)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
