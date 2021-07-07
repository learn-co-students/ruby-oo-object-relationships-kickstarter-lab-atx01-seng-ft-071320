class ProjectBacker
@@all = []
attr_reader :backer, :project
    def initialize(project, backer)
  @project = project
  @backer = backer
self.class.all << self
end

def self.all
    @@all
end


end