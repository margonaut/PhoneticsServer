class CreateWordsPhonemes < ActiveRecord::Migration
  def change
    create_table :words_phonemes do |t|
      t.belongs_to :word, null: false
      t.belongs_to :phoneme, null: false
      t.integer :position, null: false 
    end
  end
end
