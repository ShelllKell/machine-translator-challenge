require './lib/translator'

class SrtTextTranslator

  def self.translate_srt_file(srt_info, source_lang, target_lang)
    # element_array = SrtFormatter.extract_elements(srt_info)
    translator = Translator.new

    srt_info.map { |translation| translation["new_text"] = translator.get_translation(translation["text"], source_lang, target_lang) }

    srt_info
  end

end
