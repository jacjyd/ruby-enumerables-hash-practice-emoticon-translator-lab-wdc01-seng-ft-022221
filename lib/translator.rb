# require modules here
require 'pry'
require 'yaml'


def load_library(filepath)
  library = YAML.load_file(filepath)
  lang_keys = [:english, :japanese]
  library.each do |meaning, emoticons| 
    meaning => [Hash.]
  end 
  binding.pry
  puts "whyyyy"
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end