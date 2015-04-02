require 'spec_helper'

describe Translator do

  it 'instantiates the class' do
    translator = Translator.new

    expect(translator).to_not eq(nil)
  end

  describe '#get_tranlsation' do
    it 'returns the translated chunk of text' do
      translator = Translator.new

      text = 'Hi my name is Shelby'
      source_lang = 'en'
      target_lang = 'es'

      expect(translator.get_translation(text, source_lang, target_lang)).to eq('Hola mi nombre es Shelby')
    end
  end

end
