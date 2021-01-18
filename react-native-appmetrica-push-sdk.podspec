require "json"

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-appmetrica-push-sdk'
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]
  s.platforms    = :ios, '10.0'
  s.source       = { :git => 'https://github.com/aspidvip/react-native-appmetrica-push-sdk.git', :tag => s.version }

  s.source_files = 'ios/**/*.{h,m,swift}'
  s.requires_arc = true

  s.dependency 'React'
  s.dependency 'YandexMobileMetricaPush', '0.8.0'
end
