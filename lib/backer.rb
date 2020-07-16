class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def collect_backers
        ProjectBacker.all.select {|project_backers| project_backers.backer == self}
    end

    def backed_projects
        collect_backers.map {|project_backers| project_backers.project}
    end 
end