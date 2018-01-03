require_relative "change"

RSpec.describe ChangeMaker do
  subject(:change_maker) { ChangeMaker.new(number: number, denominations: denominations) }

  describe "#how_many_combinations" do
    context "4 cents using 1, 2, 3" do
      let(:number) { 4 }
      let(:denominations) { [1, 2, 3] }

      it { expect(change_maker.how_many_combinations).to eq(4) }
    end
  end
end