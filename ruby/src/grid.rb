class Grid
    attr_reader :width, :height
    def initialize(dimensions = 9)
        @width = dimensions
        @height = dimensions
    end
end