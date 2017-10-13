class LessonsController < ApplicationController
	before_action :find_lesson, only: [:show, :edit, :update,:destroy]

	def show
	end

	def new
		@lesson = Lesson.new
	end

	def create
		@lesson = Lesson.new(lessons_params)
		if @lesson.save
			redirect_to lesson_path(@lesson)
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @lesson.update(lesson_params)
			redirect_to lesson_path(@lesson)
		else
			render :edit
		end
	end

	def destroy
		@lesson.destroy
		redirect_to courses_path
	end

private
	
	def lesson_params
		params.require(:lesson).permit(:title, :body, :course_id)
	end

	def find_lesson
		@lesson = Lesson.find(params[:id])
	end
end
