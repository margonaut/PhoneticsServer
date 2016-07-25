class WordSerializer < ActiveModel::Serializer
  attributes :id, :text, :transcription
end
