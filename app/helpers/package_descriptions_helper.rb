module PackageDescriptionsHelper
  def client_name(name)
    (PackageTestReport.find name).client_name
  end
  def homes
    Home.first
  end
  
end
