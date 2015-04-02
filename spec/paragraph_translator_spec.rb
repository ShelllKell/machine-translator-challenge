require 'spec_helper'

describe ParagraphTranslator do

  it 'instantiates the class' do
    translation = ParagraphTranslator.new('Hi my name is Shelby')

    expect(translation).to_not eq(nil)
  end

  describe '#translate_paragraph' do
    it 'splits a string, translates each string, returns translated strings together' do
      translation = ParagraphTranslator.new("Hi my name is Shelby.\nI like veggies trays.\nI live in Denver.")
      source_lang = 'en'
      target_lang = 'es'

      expect(translation.translate_paragraph(source_lang, target_lang)).to eq("Hola mi nombre es Shelby.\nMe gustan las bandejas de verduras.\nVivo en Denver.")
    end
  end

end
