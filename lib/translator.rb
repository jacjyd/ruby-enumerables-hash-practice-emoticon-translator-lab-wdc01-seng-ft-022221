# require modules here
require 'pry'
require 'yaml'


def load_library(filepath)
  library = YAML.load_file(filepath)
  lang_keys = [:english, :japanese]
  library.map do |meaning, emoticons| 
    library[meaning] = Hash[lang_keys.zip(emoticons)]
  end 
  library
end

def get_japanese_emoticon (filepath, j_icon)
  library = load_library(filepath)

    library.each do |meaning, guide|
      if guide.value? (j_icon)
        return guide[:english]
      end 
    end 
  
end

def get_english_meaning (filepath, j_icon)
  library = load_library(filepath)
  binding.pry
  if !library.has_value?(j_icon)
    puts "Sorry, that emoticon was not found"
  else
    library.each do |meaning, guide|
      if guide.value? (j_icon)
       return meaning
      end 
    end 
  end 
end