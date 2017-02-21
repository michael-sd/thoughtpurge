class ThoughtsController < ApplicationController
  def index
  end

  def new
    @thought = Thought.new
  end

  def create
    Thought.create(thought_params)
    redirect_to thought_path(:thought_params)
  end

  def show
    @thoughts = Thought.all
  end

  private

  def thought_params
    params.require(:thought).permit(:view)
  end

end
