# This is an example of a query object, none of these tables exist in this repo:
class TeacherStudentsQuery
  def self.call(relation = Teacher.all)
    relation.joins(:students)
    .where("student.teacher_id = teacher.id")
    # Imagine that this was a more complicated query
  end
end