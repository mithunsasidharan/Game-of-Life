require 'pathname'
Dir[Pathname(__FILE__).dirname.realpath.to_s+'/../lib/*'].each {|file| require(file) }

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
