class LastMonth < Avo::Dashboards::PartialCard
  self.id = "last_month"
  self.label = "Last month"
  self.partial = "avo/cards/last_month"
  # self.display_header = true
  # self.cols = 1
  self.rows = 20
end
