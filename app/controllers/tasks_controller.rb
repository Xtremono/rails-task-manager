class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @tasks = Task.create
  end

  def new
    @tasks = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end
  private

  def task_params
    params.require(:tasks).permit(:tittle, :details, :completed)
  end
end
