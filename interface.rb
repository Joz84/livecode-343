require_relative "frequencies.rb"

text = File.read("lyrics.txt")

eminem_frequencies = frequencies(text)

p eminem_frequencies


