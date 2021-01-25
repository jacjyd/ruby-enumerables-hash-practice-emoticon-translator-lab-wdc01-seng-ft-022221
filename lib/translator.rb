# require modules here
require 'pry'
require 'yaml'


def load_library(filepath)
  library = YAML.load_file(filepath)
  lang_keys = [:english, :japanese]
  library.map do |meaning, emoticons| 
    meaning = Hash[lang_keys].zip(emoticons)
    binding.pry
  puts "whyyyy"
  end 
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end