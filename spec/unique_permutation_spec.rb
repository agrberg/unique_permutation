require File.join(File.dirname(__FILE__), 'spec_helper')

describe Array do
  describe '#unique_permutation' do
    before(:all) do
      @array = [1, 2, 2]
    end

    it 'should take a block that gets each array permutation' do
      @array.unique_permutation {|p| p.should be_a(Array) }
    end

    it 'should return an enum if no block is given' do
      @array.unique_permutation.should be_a(Enumerator)
    end

    it 'should not have duplicate permutations' do
      permutations = @array.unique_permutation.to_a
      permutations.select {|p| p == permutations.first }.count.should be 1
    end

    it 'generates only unique permutations in arrays with repeated elements' do
      @array.unique_permutation.to_a.count.should be 3
    end

    it 'should return fewer elements than the built in Ruby permutation method making it faster' do
      @array.unique_permutation.count.should be < @array.permutation.count
    end
  end
end
