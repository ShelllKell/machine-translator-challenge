class ReturnSrt

  def write_srt_file(array_of_elements)
    File.open('data/sriracha_trailer_es.srt', 'w') do |f|
      f.puts(SrtFormatter.join_pieces(array_of_elements))
    end
  end

end
