# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'pry'
require 'csv'

# Create Phonemes
CSV.foreach('db/phonemes.csv', headers: true) do |row|
  Phoneme.create!(row.to_hash)
end

# Create Words
CSV.foreach('db/IPA_words.csv') do |row|
    text = row.shift
    phonemes = row
    transcription = row.join("")
    word = Word.create!(text: text, transcription: transcription)
    OrderedPhonemeAssociation.new(word, phonemes)
end

# Create default
list = List.create!(name: "Beginner Words")

# Associate words with list
Word.all.each do |word|
  list.words << word
end
