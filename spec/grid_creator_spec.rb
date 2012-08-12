require './lib/grid.rb'
require './lib/cell.rb'
require './lib/grid_creator.rb'

describe GridCreator do

  before(:each) do
    @grid = GridCreator.create_grid('./fixtures/block_pattern')
  end

  describe '#create_grid' do
	it "creates a grid object from the input pattern" do
      @grid.cells.count.should == 100
	end
  end

  describe '#grid_height' do
	it "returns the height of the grid" do
      @grid.height.should == 10
    end
  end

  describe '#grid_height' do 
	it "returns the height of the grid" do
      @grid.breadth.should == 10
    end
  end

end
