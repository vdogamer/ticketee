class ProjectsController < ApplicationController
	def create 
		@project = Project.new(project_params)

		if @project.save
			flash[:notice] = "Project has been created."
			redirect_to @project
		else
			# nothing, yet
		end
	end

	def index

	end

	def new
		@project = Project.new
	end

	def show
		@project = Project.find(params[:id])
	end

private

	def project_params
		params.require(:project).permit(:name, :description)
	end
end
