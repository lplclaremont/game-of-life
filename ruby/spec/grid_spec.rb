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
end