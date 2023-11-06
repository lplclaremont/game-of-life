class Grid
    attr_reader :dimensions, :cells
    
    def initialize(dimensions = 9)
        @dimensions = dimensions
        @cells = Array.new(@dimensions) { [] }
        populate_cells()
    end

    def populate_cells
        for x in (0...dimensions) do
            for y in (0...dimensions) do
                @cells[x].push(Cell.new(self, x, y))
            end
        end
    end
end