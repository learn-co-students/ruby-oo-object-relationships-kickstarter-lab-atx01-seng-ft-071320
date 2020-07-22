class Project

attr_reader :title, :backers
@@all = []    
def initialize(title)
  @title = title
  @backers = []
  self.class.all << self
end

def add_backer(backer)

 ProjectBacker.new(self, backer)
 @backers << backer
end


def backers
    @backers
end
    def self.all
    @@all 
end
end