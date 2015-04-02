class Formatter

  DELIMITER = "\n"

  def self.split_string(text)
    text.split(DELIMITER)
  end

  def self.join_pieces(text)
    text.join(DELIMITER)
  end


end
