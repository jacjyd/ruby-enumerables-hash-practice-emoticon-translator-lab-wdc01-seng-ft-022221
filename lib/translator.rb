# require modules here
require 'pry'
require 'yaml'


def load_library
  emoticons = YAML.load_file('emoticons.yml')
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end