require 'planner'

RSpec.describe Planner, "#tasks" do
  context "more than 0 tasks" do
    it "lists the tasks to run" do
      planner = Planner.new
      expect(planner.count).to be > 0
    end
  end
end