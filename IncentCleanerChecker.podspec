#
# Be sure to run `pod lib lint IncentCleanerChecker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IncentCleanerChecker'
  s.version          = '1.0.0'
  s.summary          = 'Framework for IncentCleaner check.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'The framework that can help to check the proper work of IncentCleaner framework.'

  s.homepage         = 'https://github.com/appbooster/incent-cleaner-checker-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vladimir Vasilev' => 'fredformout@yandex.ru' }
  s.source           = { :git => 'https://github.com/appbooster/incent-cleaner-checker-ios.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'IncentCleanerChecker.framework'

  # s.source_files = 'IncentCleanerChecker/Classes/*', 'IncentCleanerChecker/Classes/**/*'
  
  # s.resource_bundles = {
  #   'IncentCleanerChecker' => ['IncentCleanerChecker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  s.swift_version = "5.0"
  
end
