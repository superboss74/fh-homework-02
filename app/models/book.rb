class Book < ApplicationRecord
  def self.search(keyword)
    if keyword.present?
      Book.where("title ILIKE ? OR author ILIKE ? OR genre ILIKE ? OR classification ILIKE ? OR booktype ILIKE ?", keyword, keyword, keyword, keyword, keyword)
    else
      Book.all
    end 
  end
end