require 'spec_helper'

describe SrtTextTranslator do

  describe '#translate_srt_info' do
    it 'parses an srt elements, translates the text, returns translated text' do
      source_lang = 'en'
      target_lang = 'es'
      srt_info = [{"text"=>
           ">> It's kind of funny because I mean when it comes down to it, it's hot sauce, right? But I've become pretty obsessed with it.",
          "sequence"=>1,
          "time_stamp"=>"00:00:00,000 --> 00:00:07,000",
          "new_text"=>
           ">> Es muy gracioso porque cuando se trata de eso, es salsa caliente, ¿verdad? Pero me he vuelto muy obsesionado con ella."}]

      result = SrtTextTranslator.translate_srt_info(srt_info, source_lang, target_lang)

      expect(result[0]["new_text"]).to eq(">> Es muy gracioso porque cuando se trata de eso, es salsa caliente, ¿verdad? Pero me he vuelto muy obsesionado con ella.")
    end
  end


end
