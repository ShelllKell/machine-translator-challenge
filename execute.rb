require './lib/srt_formatter'
require './lib/srt_text_translator'
require './lib/return_srt'

if ARGV.length != 4
  puts "You need an input file name, ouput file name, source language, and target langauge."
end

#getting the info from the input file and putting it in an array of hashes
srt_info = SrtFormatter.extract_elements(ARGV[0])

#mapping over the text and translating it with source and target language
translation = SrtTextTranslator.translate_srt_file(srt_info, ARGV[2], ARGV[3])

#putting the translated strings of text together
whole_string = SrtFormatter.join_pieces(translation)

#variable set to final translated string
file = ReturnSrt.new

#writing the file with the translated string to the output file name
file.write_srt_file(whole_string, ARGV[1])

#success message
puts "Successfully written to " + ARGV[1]
