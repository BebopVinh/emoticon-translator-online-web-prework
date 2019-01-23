# require modules here
require 'yaml'
require 'pry'


def load_library(file_path)
  file = YAML.load_file(file_path)
  emoticons = {'get_meaning' => {}, 'get_emoticon' => {}}
  file.each do |english, emotes|
    emoticons['get_meaning'][emotes.last] = english
    emoticons['get_emoticon'][emotes.first] = emotes.last
  end
  emoticons
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  emoticons["get_emoticon"].each do |key, value|
    if key == emoticon
      value
    else
      "Sorry, emoticon not found."
    end
  end
end

def get_english_meaning
  # code goes here
end
