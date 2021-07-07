class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array = []
        ProjectBacker.all.each do |item|
            if item.project == self
                array << item.backer
            end
        end
        array
    end
end