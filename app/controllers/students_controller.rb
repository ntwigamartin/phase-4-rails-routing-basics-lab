class StudentsController < ApplicationController
    def index
        data = Student.all
        render json: data
    end

    def grades
        data = Student.all.order(grade: :desc)
        render json: data
    end

    def highest_grade
        highest_grade = Student.maximum(:grade)
        data = Student.where(grade: highest_grade).first
        render json: data
    end
end
