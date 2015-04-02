class ParagraphTranslator

  def initialize(paragraph)
    @paragraph = paragraph
  end

  def translate_paragraph(source_lang, target_lang)
    array_sentences = Formatter.split_string(@paragraph)
    translator = Translator.new

    translated_strings = array_sentences.map do |translation|
      translator.get_translation(translation, source_lang, target_lang)
    end

    Formatter.join_pieces(translated_strings)
  end



end
