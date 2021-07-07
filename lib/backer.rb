

class Backer

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projects = []
    ProjectBacker.all.each do |proj|
      if proj.backer == self
        projects << proj.project
      end
    end
    projects
  end

end
