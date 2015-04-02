describe SrtTextTranslator do

  describe '#translate_srt_file' do
    it 'parses an srt file, translates the text, returns translated text with original format' do
      translation = SrtTextTranslator.new
      source_lang = 'en'
      target_lang = 'es'

      expect(translation.translate_srt_file(source_lang, target_lang)).to eq([">> Es muy gracioso porque cuando se trata de eso, es salsa caliente, ¿verdad? Pero me he vuelto muy obsesionado con ella.", ">> Es absolutamente icónico, y creo que es totalmente involuntario, también. >> Tres sílabas muy distintas. >> Ver-Ra-cha. >> Solo", "Amo ese sabor audaz. >> Oh, ja ja. ¡ Es delicioso! >> Casi todos aman mi producto.", ">> Tiene este culto. >> Me siento muy orgulloso. >> Gracias por hacer la salsa más grande del mundo. >> Ja ja", "Je je. >> Mayoría de la gente no sabe de dónde vino Sriracha. Tienes que ir a comer Sriracha la manera", "comemos Sriracha. >> No sabía", "Sriracha era popular en los Estados Unidos Estoy realmente sorprendido!", ">> Un poco mente-soplado cuando oí la historia", "detrás de él. >> Amigo, simplemente increíble historia. >> Sriracha. >> Continuar compensar mi buen producto", "mis fans. Hasta que un día, no les gusta, dejar de hacer.", nil])
    end
  end


end
