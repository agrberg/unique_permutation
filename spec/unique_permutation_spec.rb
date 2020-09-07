require File.join(File.dirname(__FILE__), 'spec_helper')

describe Array do
  describe '#unique_permutation' do
    # The six permutations of array [1, 2, 2] are [1, 2, 2], [1, 2, 2], [2, 1, 2], [2, 2, 1], [2, 1, 2], and [2, 2, 1]
    # Of those, only three are unique: [1, 2, 2], [2, 1, 2], and [2, 2, 1]

    before(:all) do
      @array = [1, 2, 2]
    end

    it 'takes a block that is yielded an array representing each permutation of the array' do
      @array.unique_permutation {|p| p.should be_a(Array) }
    end

    it 'returns an enum if no block is given' do
      @array.unique_permutation.should be_a(Enumerator)
    end

    it 'does not have duplicate permutations' do
      permutations = @array.unique_permutation.to_a
      permutations.select {|p| p == permutations.first }.count.should be 1
    end

    it 'generates only unique permutations in arrays with repeated elements' do
      @array.unique_permutation.to_a.count.should be 3
    end

    it 'return fewer elements than the built in Ruby permutation method which produces duplicates' do
      @array.unique_permutation.count.should be < @array.permutation.count
    end
  end
end
