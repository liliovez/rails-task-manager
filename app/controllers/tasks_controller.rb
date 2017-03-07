class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id].to_i)
  end


  def new
    @name = params[:name]
    @tasks = Task.all
  end

  def create
    @task = Task.new(name: params[:name])
    @task.save
    redirect_to(tasks_path)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(name: params[:name])
    redirect_to(tasks_path)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to(tasks_path)
  end
end
