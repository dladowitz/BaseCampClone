class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show

  end

  def new
    @list = List.new
    @project = Project.find(params[:project_id])
  end

  def create
    @project =Project.find(params[:project_id])
    @list = @project.lists.build(params[:list])
    # project.list.find_by(params[:project_id])
    @list.save
    redirect_to(projects_path)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
