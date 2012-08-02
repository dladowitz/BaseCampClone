class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(params[:list], params[:project_id])
    # project.list.find_by(params[:project_id])
    redirect_to(projects_path)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
