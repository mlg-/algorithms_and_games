require_relative "highest_product"

RSpec.describe HighestProduct do
  subject(:highest_product) { HighestProduct.new(numbers: numbers) }

  describe "#calculate" do
    context "highest product is 70" do
      let(:numbers) { [2, 7, 10, 1] }

      it { expect(highest_product.calculate).to eq(70) }
    end

    context "not enough numbers are provided" do
      let(:numbers) { [1] }

      it { expect{ highest_product.calculate }.to raise_error(InvalidNumberInputError) }
    end
  end
end