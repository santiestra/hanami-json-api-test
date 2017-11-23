module Api::Views::Books
  class Index
    include Api::View

    def books
      repository = BookRepository.new
      books = repository.all
    end
  end
end
