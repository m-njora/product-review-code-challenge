class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string  :genre
    end
  end
end
