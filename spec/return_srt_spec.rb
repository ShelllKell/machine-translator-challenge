require 'spec_helper'
require 'rspec/mocks'

describe ReturnSrt do

  describe '#write_srt_file' do
    it "should create 'sriracha_trailer_es.srt' and put translated srt in it" do

      array_of_elements = [{"text"=>">> It's kind of funny because I mean when it comes down to it, it's hot sauce, right? But I've become pretty obsessed with it.", "sequence"=>1, "time_stamp"=>"00:00:00,000 --> 00:00:07,000", "new_text"=>">> Es muy gracioso porque cuando se trata de eso, es salsa caliente, ¿verdad? Pero me he vuelto muy obsesionado con ella."}, {"text"=>">> It's absolutely iconic, and I think it's completely unintentional, too. >> Three very distinct syllables. >> See-rah-cha. >> I just", "sequence"=>2, "time_stamp"=>"00:00:07,000 --> 00:00:14,000", "new_text"=>">> Es absolutamente icónico, y creo que es totalmente involuntario, también. >> Tres sílabas muy distintas. >> Ver-Ra-cha. >> Solo"}]

      file = spy('sriracha_trailer_es.srt')
      file_class = spy('File')
      stub_const('File', file_class)
      allow(file_class).to receive(:open).with("data/sriracha_trailer_es.srt", "w").and_yield(file)

      ReturnSrt.new.write_srt_file(array_of_elements)

      expect(file).to have_received(:puts).with("1\n00:00:00,000 --> 00:00:07,000\n>> It's kind of funny because I mean when it comes down to it, it's hot sauce, right? But I've become pretty obsessed with it.\n\n2\n00:00:07,000 --> 00:00:14,000\n>> It's absolutely iconic, and I think it's completely unintentional, too. >> Three very distinct syllables. >> See-rah-cha. >> I just")

    end
  end

end
