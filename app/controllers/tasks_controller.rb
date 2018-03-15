class TasksController < ApplicationController

  before_action :confirm_login
  before_action :load_task, :confirm_owner, except: [:index, :new, :create]

  def index
    @tasks = current_user.tasks.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def complete
    @task.update_attribute(:completed, params[:completed])
    redirect_back(fallback_location: root_path)
  end

  private
  # whitelisting parameters
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def load_task
    @task = Task.find(params[:id])
  end

  def confirm_login
    unless current_user
      redirect_to root_path, alert: "Must log in to manage a To-Do List."
    end
  end

  def confirm_owner
    if @task && current_user != @task.user
      redirect_to tasks_path, alert: "You do not have permission to access that task."
    end
  end
end
