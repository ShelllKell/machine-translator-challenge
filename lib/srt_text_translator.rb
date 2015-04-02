class SrtTextTranslator

  def translate_srt_file(source_lang, target_lang)
    element_array = SrtFormatter.extract_elements
    translator = Translator.new

    element_array.map { |translation| translation["new_text"] = translator.get_translation(translation["text"], source_lang, target_lang) }

    SrtFormatter.join_pieces(element_array)

    element_array.map { |t| t["new_text"] }
  end

end
