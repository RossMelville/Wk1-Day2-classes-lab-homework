require('minitest/autorun')
require_relative('./library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @books = [
      title: "Trainspotting",
      rental_details: {
        student_name: "Ross",
        date: 30-06-2017
      },

      title: "Ruby for beginners",
      rental_details: {
        student_name: "Andy",
        date: 01-07-2017
      },

      title: "Harry Potter and the Chamber of Secrets",
      rental_details: {
        student_name: "Vicky",
        date: 12-06-2017
        },

      title: "When Christ and His Saints Slept",
      rental_details: {
        student_name: "Jackson",
        date: 10-04-2017
        },

      title: "The Wasp Factory",
      rental_details: {
        student_name: "Madison",
        date: 05-06-2017
      }
    ]

  end 

  def test_list_all_books
    book1 = Book.new(@books[0])
    book2 = Book.new(@books[1])
    book3 = Book.new(@books[2])
    book4 = Book.new(@books[3])
    book4 = Book.new(@books[3])

    result = @books.list_all_books
    assert_equal(nil, result)
    
  end




end