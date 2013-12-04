class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def new
  end

  def create
    @task = Task.new
    @task.tip_id = params[:tip_id]
    @task.todolist_id = params[:todolist_id]

    if @task.save
      redirect_to tasks_url, notice: "Task created successfully."
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.tip_id = params[:tip_id]
    @task.todolist_id = params[:todolist_id]

    if @task.save
      redirect_to tasks_url, notice: "Task updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy

    redirect_to tasks_url, notice: "Task deleted."
  end
end
