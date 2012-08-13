class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @lists = @project.lists.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(params[:project])
    @membership = Membership.create(:user_id => current_user.id, :role => 001, :project_id =>
                                  @project.id )

    redirect_to project_path(@project), :notice => "Project Created with ID: #{@project.id}"
    # render :show


  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(params[:project])
    redirect_to(projects_path)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.delete
    redirect_to(projects_path)
  end
end
