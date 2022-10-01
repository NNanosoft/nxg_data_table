#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint nxg_data_table.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'nxg_data_table'
  s.version          = '0.0.1'
  s.summary          = 'The next generation of Data Table'
  s.description      = <<-DESC
The next generation of Data Table
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
