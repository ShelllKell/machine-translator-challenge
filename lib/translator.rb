require 'rubygems'
require 'bing_translator'
require 'dotenv'

Dotenv.load

class Translator

  def initialize
    @translator = BingTranslator.new(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'])
  end

  def get_translation(text, source_lang, target_lang)
    @translator.translate(text, :from => source_lang, :to => target_lang)
  end

end
