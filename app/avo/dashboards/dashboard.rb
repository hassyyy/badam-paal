class Dashboard < Avo::Dashboards::BaseDashboard
  self.id = "dashboard"
  self.name = "Dashboard"

  card Overall
  card ThisMonth
  card LastMonth
end
