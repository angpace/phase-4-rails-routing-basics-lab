class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades 
        student_grades = Student.all.order(:grade).reverse
        render json: student_grades
    end

    def highest_grade
        student_grades = Student.all.order(:grade).last
        render json: student_grades
    end

end
