class DeleteTranscribedWords < ActiveRecord::Migration
  def up
    drop_table :transcribed_words
  end

  def down
    create_table :transcribed_words do |t|
    end
  end
end
