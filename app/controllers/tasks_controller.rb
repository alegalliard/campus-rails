class TasksController < ApplicationController
	def new
		@task = Task.new
	end
	def create
		task = Task.new
		task.name = params[:task][:name]
		task.status = false
		task.save

		redirect_to '/'
	end
	def show
		@task = Task.find(params[:id])
	end
	def update
		@task = Task.find(params[:id])

		task_params = {:name => params[:task][:name], :status => params[:task][:status]}
		if @task.update(task_params)
			redirect_to('/')
		else
			render :edit
		end
	end
end