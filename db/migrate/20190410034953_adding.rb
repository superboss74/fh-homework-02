class Adding < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :booktype, :string
  end
end
