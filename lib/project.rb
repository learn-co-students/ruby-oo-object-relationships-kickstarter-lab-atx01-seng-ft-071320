class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def collect_projects
        ProjectBacker.all.select{|project_backers| project_backers.project == self}
    end

    def backers 
        collect_projects.map {|project_backers| project_backers.backer}
    end 
end 