#
# Be sure to run `pod lib lint Epictic.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Epictic'
  s.version          = '0.1.0'
  s.summary          = 'Epictic library for iOS'

  s.description      = 'Epictic'

  s.homepage         = 'https://github.com/bosnian/Epictic-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Ammar Hadzic' => 'ammar.hadzic@gmail.com' }
  s.source           = { :git => 'https://github.com/bosnian/Epictic.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'Epictic/Classes/**/*'
  
  s.dependency 'Alamofire', '~> 4.0'
end
