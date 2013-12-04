class TodolistsController < ApplicationController

  def index
    @todolists = Todolist.all
  end

  def show
    @todolist = Todolist.find_by(id: params[:id])
  end

  def new
  end

  def create
    @todolist = Todolist.new
    @todolist.user_id = params[:user_id]

    if @todolist.save
      redirect_to todolists_url, notice: "Todolist created successfully."
    else
      render 'new'
    end
  end

  def edit
    @todolist = Todolist.find_by(id: params[:id])
  end

  def update
    @todolist = Todolist.find_by(id: params[:id])
    @todolist.user_id = params[:user_id]

    if @todolist.save
      redirect_to todolists_url, notice: "Todolist updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @todolist = Todolist.find_by(id: params[:id])
    @todolist.destroy

    redirect_to todolists_url, notice: "Todolist deleted."
  end
end
