require_relative 'lib/grid.rb'
require_relative 'lib/grid_creator.rb'
require_relative 'lib/printer.rb'
require_relative 'lib/tick.rb'

begin
	grid = GridCreator.create_grid(ARGV[0])
	puts "Input Pattern"
	Printer.display(grid)
	Tick.apply_rules(grid)
	puts "Output Pattern"
	Printer.display(grid)
rescue
	warn "Oops !! Make sure the input pattern file you specified exists."
end