# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  lib = YAML.load_file(file_path)
  newHash = {"get_meaning"=> {}, "get_emoticon"=> {} } 
  lib.each do |meaning, emoticons| 
    newHash["get_meaning"][emoticons[1]] = meaning
    newHash["get_emoticon"][emoticons[0]] = emoticons[1]
  end 
  newHash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
end

def get_english_meaning
  # code goes here
end