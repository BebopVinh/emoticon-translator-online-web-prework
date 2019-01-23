# require modules here
require 'yaml'
require 'pry'


def load_library(file_path)
  file = YAML.load_file(file_path)
  emoticons = {'get_meaning' => {}, 'get_emoticon' => {}}
  file.each do |english, emotes|
    binding.pry
    emoticons['get_meaning'][emotes.last] = english
    emoticons['get_emoticon'][emotes.first] = emotes.last
  end
  emoticons
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
