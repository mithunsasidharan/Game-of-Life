require_relative 'cell.rb'
require_relative 'grid.rb'

class Printer
	
	def self.display(grid)
		0.upto(grid.height-1) do |y_axis|
			grid.cells.collect { |cell|
 				if cell.y == y_axis and cell.alive?
 					print "X "
 				elsif cell.y == y_axis and cell.dead?
 					print "- "
 				end
			}
			puts
			y_axis += 1
		end
	end

end