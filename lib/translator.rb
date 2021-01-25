# require modules here
require 'pry'
require 'yaml'


def load_library(filepath)
  library = YAML.load_file(filepath)
  lang_keys = [:english, :japanese]
  library.map do |meaning, emoticons| 
    library[meaning] = Hash[lang_keys.zip(emoticons)]
  end 
  binding.pry
  library
end

def get_japanese_emoticon (filepath, j_icon)
  library = load_library(filepath)
  library.each

end

def get_english_meaning
  # code goes here
end