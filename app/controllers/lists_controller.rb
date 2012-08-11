class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks.all
  end

  def new
    @list = List.new
    @project = Project.find(params[:project_id])
  end

  def create
    @project =Project.find(params[:project_id])
    @list = @project.lists.build(params[:list])
    @list.save
    # redirect_to(project_path(@project))
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
