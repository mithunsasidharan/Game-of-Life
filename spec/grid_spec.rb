require './lib/grid.rb'
require './lib/cell.rb'
require './lib/grid_creator.rb'

describe Grid do

  before(:each) do
    @grid = GridCreator.create_grid('./fixtures/block_pattern')
  end

  describe '#find_live_neighbouring_cells' do

    it "should return true if status of the cell is true" do
      @grid.find_live_neighbouring_cells(@grid.cells.first).should == []
    end
    
  end

end
