class ReturnSrt

  def write_srt_file(final_string, target_srt)
    File.open(target_srt, 'w') do |f|
      f.puts(final_string)
    end
  end

end
