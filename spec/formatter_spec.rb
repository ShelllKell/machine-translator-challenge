require 'spec_helper'

describe Formatter do

  describe '#split_string' do
    it 'splits the string by newlines' do
      input = "Hi my name is Shelby.\nI like veggie trays."

      expect(Formatter.split_string(input)).to eq(['Hi my name is Shelby.', 'I like veggie trays.'])
    end
  end

  describe '#join_pieces' do
    it 'joins the two translated strings back together' do
      input = ['Hi my name is Shelby.', 'I like veggie trays.']

      expect(Formatter.join_pieces(input)).to eq("Hi my name is Shelby.\nI like veggie trays.")
    end
  end

end
