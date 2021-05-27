class BooksController < ApplicationController
  def index
    response = HTTP.get("https://api.nytimes.com/svc/books/v3/reviews.json?title=#{params[:title]}&api-key=#{Rails.application.credentials.api_key}")
    book = response.parse(:json)
    render json: book
  end
end
