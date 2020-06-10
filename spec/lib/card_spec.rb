require "spec_helper"
require_relative "../../lib/card.rb"

RSpec.describe Card do
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  let(:test_card) { Card.new(9, '♣') }
  context "When initalizing the card class" do
    it "should have a rank and suit" do 
      expect(test_card).to be_a(Card)
    end
  end

  describe '#rank' do
    it 'should have a reader for rank' do
      expect(test_card.rank).to eq(9)
    end

    it 'should NOT have a writer for rank' do
      expect{ test_card.rank = 5 }.to raise_error(NoMethodError)
    end
  end
end


# let(:test_card) { Card.new(9, '♣') }

