require("minitest/autorun")
require_relative("../classes_homework.rb")

class StudentTest < MiniTest::Test


  def test_student_name
   student = Student.new("Chris", "e22")
   assert_equal("Chris", student.get_student_name())
  end

 def test_cohort
  student = Student.new("Chris", "e22")
  assert_equal("e22", student.get_cohort())
 end

 def test_set_student_name
   student = Student.new("Chris", "e22")
   student.set_student_name("Craig")
   assert_equal("Craig", student.get_student_name())
 end

 def test_talk
    student = Student.new("Chris", "e22")
    assert_equal("i can talk", student.talk())
 end

 def test_print_favourite_language
  student = Student.new("Chris", "e22")
  assert_equal("I love Ruby", student.favourite_language("Ruby") )
 end
end
