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
  lib = load_library(file_path)
    if lib["get_emoticon"].include?(english_emoticon) 
    lib["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end