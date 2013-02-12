class TaskController < ApplicationController
  def index
    @tasks = Task.paginate(page: params[:page])
  end
  
  def new
    @task = Task.new
  end
  
end
