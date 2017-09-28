class HomeController < ApplicationController
	def index
		@tarefas = Task.all
	end
end