#
# Be sure to run `pod lib lint BranUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BranUI'
  s.version          = '0.1.0'
  s.summary          = 'A short description of BranUI.'

  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC

  s.homepage         = 'https://github.com/Brandnew-one/BranUI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Brandnew-one' => 'cold929@naver.com' }
  s.source           = { :git => 'https://github.com/Brandnew-one/BranUI.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'

  s.source_files = 'BranUI/Classes/**/*'
  s.resources = "BranUI/Assets/*.xcassets"
  s.resource_bundles = {
    'BranUI' => ['BranUI/Assets/*']
  }
  s.dependency 'lottie-ios'
end
