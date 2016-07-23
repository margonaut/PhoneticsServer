class CreateWordsLists < ActiveRecord::Migration
  def change
    create_table :lists_words do |t|
      t.belongs_to :word, null: false
      t.belongs_to :phoneme, null: false
    end
  end
end
