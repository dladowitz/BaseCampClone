class TasksController < ApplicationController
  def new
    @task = Task.new
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.build(params[:task])
    @task.save
    redirect_to(list_path(@list))
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def index
  end
end
