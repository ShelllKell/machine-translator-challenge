require './lib/translator'

class SrtTextTranslator

  def self.translate_srt_info(srt_info, source_lang, target_lang)
    translator = Translator.new

    srt_info.map { |translation| translation["new_text"] = translator.get_translation(translation["text"], source_lang, target_lang) }

    srt_info
  end

end
