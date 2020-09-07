require File.join(File.dirname(__FILE__), 'spec_helper')

describe Array do
  describe '#unique_permutation' do
    let(:array) { [1, 2, 2] }
    # The six permutations of array [1, 2, 2] are [1, 2, 2], [1, 2, 2], [2, 1, 2], [2, 2, 1], [2, 1, 2], and [2, 2, 1]
    # Of those, only three are unique: [1, 2, 2], [2, 1, 2], and [2, 2, 1]
    let(:unique_permutations) {
      [
        [1, 2, 2],
        [2, 1, 2],
        [2, 2, 1]
      ]
    }

    it 'takes a block that is yielded an array representing each permutation of the array' do
      array.unique_permutation do |permutation|
        expect(permutation).to be_a(Array)
        expect(unique_permutations.include?(permutation)).to eq(true)
      end
    end

    it 'returns an enum if no block is given' do
      expect(array.unique_permutation).to be_a(Enumerator)
    end

    it 'does not have duplicate permutations' do
      all_permutations = array.unique_permutation.to_a

      expect(all_permutations.none? { |permutation| all_permutations.count(permutation) > 1 }).to eq(true)
    end

    it 'generates only unique permutations in arrays with repeated elements' do
      expect(array.unique_permutation.to_a).to eq(unique_permutations)
    end

    it 'return fewer elements than the built in Ruby permutation method which produces duplicates' do
      expect(array.unique_permutation.count).to be < array.permutation.count
    end
  end
end
