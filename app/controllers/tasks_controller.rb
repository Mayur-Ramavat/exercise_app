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


  def edit
    @task = Task.find(params[:id])
  end


  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      flash[:success] = "Task Upadated"
      redirect_to @task
    else
      render 'edit'
    end
  end


  def destroy
    Task.find(params[:id]).destroy
    flash[:success] = "Task deleted."
    redirect_to tasks_url
  end

end
