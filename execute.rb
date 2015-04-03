require './lib/srt_formatter'
require './lib/srt_text_translator'
require './lib/return_srt'

if ARGV.length != 4
  puts "You need an input file name, ouput file name, source language, and target langauge."
end

srt_info = SrtFormatter.extract_elements(ARGV[0])
translation = SrtTextTranslator.translate_srt_file(srt_info, ARGV[2], ARGV[3])
whole_string = SrtFormatter.join_pieces(translation)

file = ReturnSrt.new

file.write_srt_file(whole_string, ARGV[1])

puts "Successfully written to " + ARGV[1]
