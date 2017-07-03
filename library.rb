class Library

  def initialize(library)
    @title = book[:title]
    @rental_details = book[:rental_details]
  end

  def list_all_books(library)
    book_list = []
    for book in library[:books] do
      book_list.push(book)
    end
    return book_list
  end



end