class ThisMonth < Avo::Dashboards::PartialCard
  self.id = "this_month"
  self.label = "This month"
  self.partial = "avo/cards/this_month"
  self.display_header = false
  self.rows = 20
end
