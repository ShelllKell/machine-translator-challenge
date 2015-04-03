describe SrtTextTranslator do

  describe '#translate_srt_file' do
    it 'parses an srt file, translates the text, returns translated text' do
      translation = SrtTextTranslator.new
      source_lang = 'en'
      target_lang = 'es'
      result = translation.translate_srt_file(source_lang, target_lang)

      expect(result[0]["new_text"]).to eq(">> Es muy gracioso porque cuando se trata de eso, es salsa caliente, ¿verdad? Pero me he vuelto muy obsesionado con ella.")
    end
  end


end
