module Api::Controllers::Books
  class Create
    include Api::Action
    expose :book

    params do
      required(:title).filled
    end

    def call(params)
      repository = BookRepository.new
      p params
      @book = repository.create(title: params[:title])
    end
  end
end
