enum NavigationFlow {
  def,
  rebarDashboard,
  rebarMachine,
  rebarPreDelivery,
  rebarDelivery,
  rebarMore,
  customerDashboard,
  customerWorkOrder,
  customerDeliveryNote,
  customerInvoice,
  customerMore,
}

enum RebarTabItem { rebarDashboard, rebarMachine,rebarPreDelivery ,rebarDelivery, rebarMore }

enum CustomerTabItem {
  customerDashboard,
  customerWorkOrder,
  customerDeliveryNote,
  customerInvoice,
  customerMore
}

enum UserGroup {
  superAdmin,
  admin,
  customer,
  loadTracker,
  rebarTracker,
  trackerBoth
}
