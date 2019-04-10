class Book < ApplicationRecord

    def index
        @books = Book.all
        @search = params["search"]
        if @search.present?
          @title = @search["title"]
          @books = Book.where(title: @title)
        end
    end

 #   def self.search(search)
 #       if search
 #           find(:all, :conditions ==> ["title LIKE ? OR author LIKE ? OR genre LIKE ? OR classification LIKE ? OR booktype LIKE ? OR year LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
 #       else
 #           find(:all)
 #       end
end