class WordSerializer < ActiveModel::Serializer
  attributes :id, :text, :transcription, :phonemes
end
