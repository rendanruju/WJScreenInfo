#
# Be sure to run `pod lib lint WJScreenInfo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'WJScreenInfo'
s.version          = '0.0.1'
s.summary          = 'WJScreenInfo'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = 'This is a practical screen information class, using it will be better to handle screen width and height and adapt to a variety of bang screens.'

s.homepage         = 'https://github.com/rendanruju/WJScreenInfo'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'rendanruju' => '952753007@qq.com' }
s.source           = { :git => 'https://github.com/rendanruju/WJScreenInfo.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '8.0'

s.source_files = 'WJScreenInfo', 'WJScreenInfo/WJScreenInfo/WJScreenInfo/**/*.{h,m}'

# s.resource_bundles = {
#   'WJScreenInfo' => ['WJScreenInfo/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
