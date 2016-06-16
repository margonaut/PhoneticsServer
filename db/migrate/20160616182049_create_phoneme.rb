class CreatePhoneme < ActiveRecord::Migration
  def change
    create_table :phonemes do |t|
      t.string :symbol, null: false
      t.string :category
      t.string :place
      t.string :manner
      t.boolean :voiced
    end
    
    add_index :phonemes, :symbol, unique: true
  end
end
