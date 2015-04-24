class ShelvesController < ApplicationController
  def index
    @shelves = Shelf.all
  end

  def show
    @shelf = Shelf.find(params[:id])
  end

  def new
    @shelf = Shelf.new
    3.times do
      @shelf.shelf_books.new
    end
  end

  def create
    shelf = Shelf.new(shelf_params)

    if shelf.save
      redirect_to shelves_path
    else
      render :new
    end
  end
  
  private
  # Using a private method to encapsulate the permissible parameters is just a good pattern
  # since you'll be able to reuse the same permit list between create and update. Also, you
  # can specialize this method with per-user checking of permissible attributes.
  def shelf_params
    params.require(:shelf).permit(:title, :shelf_books_attributes => [:condition, :book_id])
  end
end
