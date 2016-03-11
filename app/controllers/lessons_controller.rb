class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_authorized_for_current_lesson


	def show
	end

	private

	helper_method :current_lesson
	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end


	private

	def require_authorized_for_current_lesson
		if current_user.enrolled_in?(current_lesson) != true
			redirect_to course_path, alert: 'You must be enrolled to view lesson!'
		end
	end


end
