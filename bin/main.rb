#!/usr/bin/env ruby

require_relative '../lib/bida_lib.rb'
require 'colorize'

languages = { en: 'English' }
err = nil
not_language = "Please choose one of the available languages by typing the language code ('en' for English)".bold.yellow

if languages.length > 1
  loop do
    clear
    puts '++ WELCOME DEAR USER ++'.bold.cyan
    line_return
    puts 'Please choose your language :'
    line_return
    languages.each { |code, lang| puts "#{code} - #{lang}" }
    line_return
    show_error(err, not_language)
    choice = take_it.to_sym
    if languages.keys.any?(choice)
      require_relative "../lang/#{choice}.rb"
      break
    else
      err = not_language
    end
  end
else
  require_relative "../lang/en.rb"
end

clear
puts before_starting
