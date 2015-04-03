require './lib/srt_formatter'
require './lib/srt_text_translator'
require './lib/return_srt'

if ARGV.length != 4
  puts "You need an input file name, ouput file name, source language, and target langauge."
end

#getting the info from the input file and putting it in an array of hashes
srt_info = SrtFormatter.extract_elements(ARGV[0])

#mapping over the text and translating it with source and target language
translation = SrtTextTranslator.translate_srt_info(srt_info, ARGV[2], ARGV[3])

#putting the translated strings plus sequence and time stamp back together
whole_string = SrtFormatter.join_pieces(translation)

File.open(ARGV[1], 'w') do |f|
  f.puts(whole_string)
end

#success message
puts "Successfully written to " + ARGV[1]
