# frozen_string_literal: true

describe Array do
  describe '#unique_permutation' do
    let(:array) { [1, 2, 2] }
    # The six permutations of array [1, 2, 2] are [1, 2, 2], [1, 2, 2], [2, 1, 2], [2, 2, 1], [2, 1, 2], and [2, 2, 1]
    # Of those, only three are unique: [1, 2, 2], [2, 1, 2], and [2, 2, 1]
    let(:unique_permutations) do
      [
        [1, 2, 2],
        [2, 1, 2],
        [2, 2, 1]
      ]
    end

    it 'yields each permutation to the block' do
      array.unique_permutation do |permutation|
        expect(unique_permutations).to include(permutation)
      end
    end

    it 'returns an enumerator if no block is given' do
      expect(array.unique_permutation).to be_a(Enumerator)
    end

    it 'does not have duplicate permutations' do
      all_permutations = array.unique_permutation.to_a

      expect(all_permutations.none? { |permutation| all_permutations.count(permutation) > 1 }).to be(true)
    end

    it 'generates only unique permutations in arrays with repeated elements' do
      expect(array.unique_permutation.to_a).to eq(unique_permutations)
    end

    it 'returns fewer elements than the built in permutation method which produces duplicates' do
      expect(array.unique_permutation.count).to be < array.permutation.count
    end

    it 'returns one permutation for an empty array' do
      expect([].unique_permutation.to_a).to eq([[]])
    end

    it 'returns one permutation for a single element' do
      expect([1].unique_permutation.to_a).to eq([[1]])
    end

    it 'returns one permutation when all elements are identical' do
      expect([2, 2, 2].unique_permutation.to_a).to eq([[2, 2, 2]])
    end

    it 'matches the count of the built in permutation method when all elements are unique' do
      all_unique = [1, 2, 3]

      expect(all_unique.unique_permutation.count).to eq(all_unique.permutation.count)
    end
  end
end
