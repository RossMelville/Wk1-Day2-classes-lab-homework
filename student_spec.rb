require('minitest/autorun')
require_relative('./student.rb')

class TestStudent < MiniTest::Test

  def test_get_name
    student1 = Student.new("John", 13)
    student2 = Student.new("Stacy", 12)
    student3 = Student.new("Alex", 11)
 
    student1.get_name

    assert_equal("John", student1.get_name)
  end

  def test_get_cohort
    student1 = Student.new("John", 13)
    student2 = Student.new("Stacy", 12)
    student3 = Student.new("Alex", 11)
  
    student2.get_cohort

    assert_equal(12, student2.get_cohort)
  end

  def test_set_name
    student1 = Student.new("John", 13)
    student2 = Student.new("Stacy", 12)
    student3 = Student.new("Alex", 11)
  
    student3.set_name("Dave")

    assert_equal("Dave", student3.get_name)
  end

  def test_set_cohort
    student1 = Student.new("John", 13)
    student2 = Student.new("Stacy", 12)
    student3 = Student.new("Alex", 11)
  
    student2.set_cohort(14)

    assert_equal(14, student2.get_cohort)
  end

  def test_student_talk
    student1 = Student.new("John", 13)
    student2 = Student.new("Stacy", 12)
    student3 = Student.new("Alex", 11)
  
    student1.student_talk

    assert_equal("I am currently talking", student1.student_talk)
  end

  

end