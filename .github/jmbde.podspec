Pod::Spec.new do |s|
  s.name             = "JMBde"
  s.version          = "0.1.0"
  s.summary          = "Tool to handle data of a company"
  s.homepage         = "https://github.com/jmuelbert/jmbde-macos"
  s.license          = 'EUPL-1.2'
  s.author           = { "Jürgen" => "jmbde@go4more.de" }
  s.source           = { :git => "https://github.com/jmuelbert/jmbde-macos.git", :tag => s.version.to_s }
   s.requires_arc = true

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.13"

  coredata_dependencies = lambda do |spec|
    spec.frameworks = ['CoreData']
  end

  foundation_dependencies = lambda do |spec|
    spec.dependency "Result", "~> 3.0"
  end

  all_platforms = lambda do |spec|
    spec.ios.deployment_target = "8.0"
    spec.osx.deployment_target = "10.13"
    spec.watchos.deployment_target = "2.0"
    spec.tvos.deployment_target = '9.0'
  end
end