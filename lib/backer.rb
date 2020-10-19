require 'pry'

class Backer

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pb = ProjectBacker.all.select do |project_b|
            project_b.backer == self    
        end 
        pb.map do |project_b|
          project_b.project
        end
    end

end
