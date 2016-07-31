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
# CSV.foreach('db/phonemes.csv', headers: true) do |row|
#   Phoneme.create!(row.to_hash)
# end



CSV.foreach('db/test_CMU.csv') do |row|
    text = row.shift
    phonemes = row
    transcription = row.join("")
    word = Word.create!(text: word, transcription: transcription)
    # OrderedPhonemeAssociation.new(word, phonemes)
  end

#
#
# words = ["state", "repay", "grasp", "few", "gold"
# "soil", "shelter", "rising", "trail", "type"
# "agreed", "constant", "forward", "daytime", "members"
# "length", "melody", "exact", "include", "human"
# "happily", "details", "paid", "music", "perhaps"
# "permit", "rarely", "raise", "quietly", "single"
# "notice", "pause", "solve", "puzzle", "trouble"
# "understood", "women", "warn", "action", "yesterday"
# "carefully", "captain", "enjoyment", "equation", "determine"
# "different", "language", "mammal", "dessert", "favorite"
# "express", "thoughtful", "surprise", "stomach", "pattern"
# "pleasure", "probably", "numeral", "neither", "million"
# "message", "section", "actor", "annual", "beginning"
# "except", "laughter", "island", "inventor", "journey"
# "suitcase", "squeeze", "southern", "receive", "protection"
# "period", "possible", "president", "natural", "slippery"
# "sweater", "syllable", "tornado", "sandal", "represent"
# "shoulder", "separate", "business", "chocolate", "chemical"
# "schedule", "necessary", "weight", "whisper", "weird"
# "constitution", "ambulance", "successful", "scissors", "rehearse"]
#
# words.each do |word|
#
# end
