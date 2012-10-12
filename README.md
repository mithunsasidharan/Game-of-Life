This is a ruby implementation of the famous Conway's Game of Life.

Please run bundle install after you clone the project. The ruby version used is ruby 1.9.3p194

The initial pattern is provided through an input file which has the live cell and dead cell representation as X and - respectively. As of now the program generates only a single tick but you can generate as many ticks as you want by modifying the code in the game.rb file. For example :

```ruby
        5.times do |ticker|
                Tick.apply_rules(grid)
                puts "Output Pattern"
                grid.display
        end
```


A sample input file with initial toad pattern would be like this:

```
- - - - - - - - - -
- - - - - - - - - -
- - - - - - - - - -
- - - - - - - - - -
- - - - X X X - - -
- - - X X X - - - -
- - - - - - - - - -
- - - - - - - - - -
- - - - - - - - - -
- - - - - - - - - -
```


and it's corresponding output would look like :

```
- - - - - - - - - -
- - - - - - - - - -
- - - - - - - - - -
- - - - - X - - - -
- - - X - - X - - -
- - - X - - X - - -
- - - - X - - - - -
- - - - - - - - - -
- - - - - - - - - -
- - - - - - - - - -
```


You can run the application from the root using the command :

```sh
  $ ruby bin/game.rb <input_pattern>
```


For example, you can try running with the sample input files in the fixtures folder :

```sh
  $ ruby bin/game.rb fixtures/toad_pattern
```


You can run the tests by running either of the following commands from the root of the application :

```sh
  $ rake
  $ rspec
```
