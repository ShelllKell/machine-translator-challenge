require 'srt'

class SrtFormatter

  def self.extract_elements(input_filename)
    srt_info = []

    file = SRT::File.parse(File.new(input_filename))
      file.lines.each do |line|
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
        little_string = "#{hash["sequence"]}\n#{hash["time_stamp"]}\n#{hash["new_text"]}\n\n"
        return_string += little_string
      end
      return_string.strip
  end

end
