class Cell
    attr_reader :x, :y
    
    def initialize(grid, x, y)
        @grid, @x, @y = grid, x, y
        @live = false
    end

    def live?
        @live
    end
end