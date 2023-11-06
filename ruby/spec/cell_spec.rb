require 'cell'

RSpec.describe Cell do
    describe 'initialisation' do
        it 'contains the x, y coordinates and is dead' do
            grid = double("grid")
            cell = Cell.new(grid, 0, 1)
            
            expect(cell.x).to eq 0
            expect(cell.y).to eq 1
            expect(cell.live?).to eq false
        end
    end

    describe '#toggle_live_status' do
        it 'changes the live status from false to true and back' do
            grid = double("grid")
            cell = Cell.new(grid, 0, 1)

            cell.toggle_live_status()
            expect(cell.live?).to eq true 

            cell.toggle_live_status()
            expect(cell.live?).to eq false 
        end
    end

    describe 'finding neighbours' do
        it 'identifies correct number of live neighbours' do
            grid = double("grid")

            neighbour1 = Cell.new(grid, 0, 0)
            neighbour2 = Cell.new(grid, 0, 1)
            neighbour3 = Cell.new(grid, 0, 2)
            neighbour4 = Cell.new(grid, 1, 0)
            neighbour5 = Cell.new(grid, 1, 2)
            neighbour6 = Cell.new(grid, 2, 0)
            neighbour7 = Cell.new(grid, 2, 1)
            neighbour8 = Cell.new(grid, 2, 2)

            # change status for two neighbours to live
            neighbour7.toggle_live_status
            neighbour8.toggle_live_status

            cell = Cell.new(grid, 1, 1)
        
            allow(grid).to receive(:cell_at).with(0, 0).and_return(neighbour1)
            allow(grid).to receive(:cell_at).with(0, 1).and_return(neighbour2)
            allow(grid).to receive(:cell_at).with(0, 2).and_return(neighbour3)
            allow(grid).to receive(:cell_at).with(1, 0).and_return(neighbour4)
            allow(grid).to receive(:cell_at).with(1, 2).and_return(neighbour5)
            allow(grid).to receive(:cell_at).with(2, 0).and_return(neighbour6)
            allow(grid).to receive(:cell_at).with(2, 1).and_return(neighbour7)
            allow(grid).to receive(:cell_at).with(2, 2).and_return(neighbour8)

            expect(cell.live_neighbours).to eq 2
        end
    end
end