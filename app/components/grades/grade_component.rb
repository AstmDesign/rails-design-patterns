module Grades
  class GradeComponent < ApplicationComponent
    def initialize(grade)
      @grade = grade[:grade]
    end

    def average_grade
      "your average is #{grade.average}"
    end

    def mean_grade
      "your mean is #{grade.mean}"
    end

  private

    attr_reader :grade
  end
end
