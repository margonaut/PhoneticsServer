class RenameListsWordsColumn < ActiveRecord::Migration
  def change
    rename_column :lists_words, :phoneme_id, :list_id
  end
end
