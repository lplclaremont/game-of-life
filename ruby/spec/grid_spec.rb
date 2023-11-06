require 'grid'

RSpec.describe Grid do
    describe 'initialisation' do
        it 'creates dimensions based on argument for dimensions' do
            grid = Grid.new(4)
            expect(grid.dimensions).to eq 4
        end

        it 'creates default dimension of 9 when no initialiser argument' do
            grid = Grid.new()
            expect(grid.dimensions).to eq 9
        end

        it 'creates a cells array of arrays with all dead cells' do
            grid = Grid.new()
            expect(grid.cells.length).to eq 9
            expect(grid.cells.flatten.length).to eq 81
            expect(grid.cells.flatten.all?(&:live?)).to eq false
        end
    end

    describe '#cell_at' do
        it 'returns cell at correct position' do
            grid = Grid.new()
            cell = grid.cell_at(3, 7)
            
            expect(cell.x).to eq 3
            expect(cell.y).to eq 7
        end

        it 'returns nil if the x or y coordinate out of range' do
            grid = Grid.new()
            cell1 = grid.cell_at(-1, 0)
            cell2 = grid.cell_at(0, -1)
            cell3 = grid.cell_at(9, 0)
            cell4 = grid.cell_at(0, 9)

            expect(cell1).to eq nil
            expect(cell2).to eq nil
            expect(cell3).to eq nil
            expect(cell4).to eq nil
        end
    end
end