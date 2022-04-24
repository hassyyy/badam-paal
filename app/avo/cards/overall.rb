class Overall < Avo::Dashboards::PartialCard
  self.id = "overall_card"
  self.partial = "avo/cards/overall"
  self.display_header = false
  self.rows = 20
end
