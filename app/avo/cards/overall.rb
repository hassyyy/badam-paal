class Overall < Avo::Dashboards::PartialCard
  self.id = "overall_card"
  self.label = "Overall"
  self.partial = "avo/cards/overall"
  # self.display_header = true
  # self.cols = 1
  self.rows = 20
end
