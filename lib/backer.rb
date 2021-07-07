class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        array = []
        ProjectBacker.all.each do |item|
            if item.backer == self
                array << item.project
            end
        end
        array
    end
end