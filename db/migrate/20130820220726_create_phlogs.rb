class CreatePhlogs < ActiveRecord::Migration
  def change
    create_table :phlogs do |t|
      t.string :title
      t.string :pic
      t.boolean :pic_processed
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
