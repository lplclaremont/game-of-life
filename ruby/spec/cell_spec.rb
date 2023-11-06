require 'cell'

RSpec.describe Cell do
    describe 'initialisation' do
        it 'begins as dead and contains the x, y coordinates' do
            grid = double("grid")
            cell = Cell.new(grid, 0, 1)
            
            expect(cell.x).to eq 0
            expect(cell.y).to eq 1
            expect(cell.live?).to eq false
        end
    end
end