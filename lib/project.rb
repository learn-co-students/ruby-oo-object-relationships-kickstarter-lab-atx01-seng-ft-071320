

class Project

  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    people = []
    ProjectBacker.all.each do |proj|
      if proj.project == self
        people << proj.backer
      end
    end
    people
  end

end
