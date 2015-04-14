require 'yaml'

class Planner

  def initialize
    # TODO:
    # Tasks will become a model task.rb,
    # Computes will become compute.rb
    @tasks = YAML.load_file('input/tasks.yaml')
    @computes = YAML.load_file('input/compute.yaml')
  end

  def count
    @tasks.length
  end
end