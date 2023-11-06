require './src/grid'

RSpec.describe Grid do
    describe 'initialisation' do
        it 'creates width and height based on argument for dimensions' do
            grid = Grid.new(4)
            expect(grid.width).to eq 4
            expect(grid.height).to eq 4
        end
        it 'has default dimension of 9' do
            grid = Grid.new()
            expect(grid.width).to eq 9
            expect(grid.height).to eq 9
        end
    end
end