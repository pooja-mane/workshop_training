module ApplicationHelper

  def collect_coaches
    Coach.all.collect {|c| [ c.name, c.id ] }
  end
end
