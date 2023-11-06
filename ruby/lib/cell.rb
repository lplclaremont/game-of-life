class Cell
    attr_reader :x, :y, :grid

    def initialize(grid, x, y)
        @grid, @x, @y = grid, x, y
        @live = false
    end

    def live?
        @live
    end

    def toggle_live_status
        @live = !@live
    end

    def find_neighbours
        neighbours = []

        neighbours << grid.cell_at(x-1, y)
        neighbours << grid.cell_at(x, y-1)
        neighbours << grid.cell_at(x, y+1)
        neighbours << grid.cell_at(x+1, y)

        neighbours << grid.cell_at(x-1, y-1)
        neighbours << grid.cell_at(x-1, y+1)
        neighbours << grid.cell_at(x+1, y-1)
        neighbours << grid.cell_at(x+1, y+1)

        return neighbours
    end

    def live_neighbours
        neighbours = find_neighbours
        count = 0
        neighbours.each do |cell|
            count += 1 if cell && cell.live?
        end
        return count
    end
end