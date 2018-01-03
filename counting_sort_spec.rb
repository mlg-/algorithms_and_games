require_relative "counting_sort"

RSpec.describe CountingSort do
  subject(:counting_sort) { CountingSort.new(list: list) }

  describe "#sort" do
    let(:list) { [5, 6, 1, 8, 8, 23, 90, 12, 1] }

    it { expect(counting_sort.sort).to eq(list.sort!) }
  end
end