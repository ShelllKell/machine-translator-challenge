require 'spec_helper'

describe SrtFormatter do

  describe '#extract_elements' do
    it 'pulls each element out of the srt file and puts them in an array of hashes' do

      expect(SrtFormatter.extract_elements("data/sriracha_trailer_en.srt")[0]).to eq({"text"=>">> It's kind of funny because I mean when it comes down to it, it's hot sauce, right? But I've become pretty obsessed with it.", "sequence"=>1, "time_stamp"=>"00:00:00,000 --> 00:00:07,000"})
    end
  end

  describe '#join_pieces' do
    it 'formats the translated text along with other elements into the original srt format' do
      array_of_elements = [{"text"=>">> It's kind of funny because I mean when it comes down to it, it's hot sauce, right? But I've become pretty obsessed with it.", "sequence"=>1, "time_stamp"=>"00:00:00,000 --> 00:00:07,000", "new_text"=>">> Es muy gracioso porque cuando se trata de eso, es salsa caliente, ¿verdad? Pero me he vuelto muy obsesionado con ella."}, {"text"=>">> It's absolutely iconic, and I think it's completely unintentional, too. >> Three very distinct syllables. >> See-rah-cha. >> I just", "sequence"=>2, "time_stamp"=>"00:00:07,000 --> 00:00:14,000", "new_text"=>">> Es absolutamente icónico, y creo que es totalmente involuntario, también. >> Tres sílabas muy distintas. >> Ver-Ra-cha. >> Solo"}]

      expect(SrtFormatter.join_pieces(array_of_elements)).to eq("1\n00:00:00,000 --> 00:00:07,000\n>> Es muy gracioso porque cuando se trata de eso, es salsa caliente, ¿verdad? Pero me he vuelto muy obsesionado con ella.\n\n2\n00:00:07,000 --> 00:00:14,000\n>> Es absolutamente icónico, y creo que es totalmente involuntario, también. >> Tres sílabas muy distintas. >> Ver-Ra-cha. >> Solo")
    end
  end


end
