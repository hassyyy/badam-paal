class HomeDashboard < Avo::Dashboards::BaseDashboard
  self.id = "home_dashboard"
  self.name = "Home"

  card Overall
  card LastMonth
  card ThisMonth
end
