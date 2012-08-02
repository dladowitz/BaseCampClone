class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    @project.save
    redirect_to(projects_path)


  end

  def edit
  end

  def update
  end

  def destroy
  end
end
