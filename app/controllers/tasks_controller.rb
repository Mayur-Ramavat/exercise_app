class TasksController < ApplicationController
  def index
    @tasks = Task.paginate(page: params[:page])
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.create(params[:task])
    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end
  
  def show
    @task = Task.find(params[:id])
  end
end
