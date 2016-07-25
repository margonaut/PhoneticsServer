class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :words

  def words
    object.words.map do |word|
      WordSerializer.new(word)
    end
  end
end
