require 'srt'

DELIMITER = "\n"

class SrtFormatter

  def self.extract_elements
    srt_info = []

    file = SRT::File.parse(File.new("data/sriracha_trailer_en.srt"))
      file.lines.map do |line|
        srt_block = {
          "text" => line.text.join(" "),
          "sequence" => line.sequence,
          "time_stamp" => line.time_str,
        }

        srt_info.push(srt_block)
      end
      srt_info
  end

  def self.join_pieces(array_of_elements)
    return_string = ""

      array_of_elements.each do |hash|
        little_string = "#{hash["sequence"]}\n#{hash["time_stamp"]}\n#{hash["text"]}\n\n"
        return_string += little_string
      end
      return_string.strip
  end

end
