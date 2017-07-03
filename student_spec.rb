require('minitest/autorun')
require_relative('./student.rb')

class TestStudent < MiniTest::Test

  def test_student
    student1 = Student.new("John", 13)
    student2 = Student.new("Stacy", 12)
    student3 = Student.new("Alex", 11)
 
    student1.get_name

    assert_equal("John", student1.get_name)
  end
end