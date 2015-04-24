class Shelf < ActiveRecord::Base
  has_many :shelf_books
  has_many :books, :through => :shelf_books
  accepts_nested_attributes_for :shelf_books, :reject_if => lambda { |b| b[:book_id].blank? }

  def full_display_title
    if books.present?
      "#{title} (#{books.map(&:title).join(', ')})"
    else
      title
    end
  end
end
