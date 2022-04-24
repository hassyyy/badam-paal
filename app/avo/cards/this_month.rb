class ThisMonth < Avo::Dashboards::PartialCard
  self.id = "this_month"
  self.label = "This month"
  self.partial = "avo/cards/this_month"
  # self.display_header = true
  # self.cols = 1
  self.rows = 20
end
