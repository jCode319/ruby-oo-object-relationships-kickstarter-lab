class Project

    attr_reader :title

    @@all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
       ProjectBacker.new(self, backer)

    end

    def backers
        pb = ProjectBacker.all.select do |project_b| 
        project_b.project == self
    end
        pb.map do |project|
        project.backer
    end
  end
        
end