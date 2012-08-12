require './lib/grid.rb'
require './lib/cell.rb'
require './lib/grid_creator.rb'
require './lib/tick.rb'

describe GridCreator do

  before(:each) do
    @grid = GridCreator.create_grid('./fixtures/block_pattern')
    @neighbouring_live_cells = @grid.find_live_neighbouring_cells(@grid.cells.first).count
  end


  describe '#if_rebirth_possible' do
	 it "returns true if cell has 3 live neighbours" do
      Tick.if_rebirth_possible?(@neighbouring_live_cells).should == false
    end
  end

  describe '#if_cell_lonely' do
    it "returns true if cell can has less than 2 neighbours" do
      Tick.if_cell_lonely?(@neighbouring_live_cells).should == true
    end
  end

  describe '#if_cell_overcrowded' do
    it "returns true if cell can has more than 3 neighbours" do
      Tick.if_cell_overcrowded?(@neighbouring_live_cells).should == false
    end
  end

end
