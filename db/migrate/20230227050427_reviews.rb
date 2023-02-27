class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
    t.integer :star_rating
    t.string :comment
    end  
  end
end
