# require modules here
require "yaml"
def load_library(file_path)
  lib = YAML.load_file(file_path)
  newHash = {"get_meaning": {}, "get_emoticon": {} } 
  lib.each do |meaning, emoticon| 
    
  newHash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end