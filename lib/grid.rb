require_relative 'cell.rb'

class Grid

	attr_accessor :cells, :height, :breadth
	ADJACENT_OFFSETS = [[-1, -1], [0, -1], [1, -1],[-1,0],[1,0],[-1,1],[0,1],[1,1]]

	def initialize(cells, height, breadth)
		self.cells = cells
		self.height = height
		self.breadth = breadth
	end

	def find_live_neighbouring_cells(cell)      
  	ADJACENT_OFFSETS .each_with_object([]) do |(offset_x, offset_y), neighbour_cells|
  		self.cells.each do |node|
  			if node.x == cell.x + offset_x && node.y == cell.y + offset_y
      		neighbour_cells << node if node.alive?
      	end
   		end
 		end
	end

	def update 
		each(&:update)
	end

	def each(&block)
		@cells.each(&block)
	end

end
