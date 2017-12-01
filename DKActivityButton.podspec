#
# Be sure to run `pod lib lint DKActivityButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DKActivityButton'
  s.version          = '1.0.0'
  s.summary          = 'iOS UIButton subclass with activity indicator in form of spinning UIImageView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
To change spinning circle image just change "preloader" image in your assets.
It has only one property - loading. All other properties can be set as for regular UIButton.

I use this control with ReactiveCocoa.
Written in Objective C.
                       DESC

  s.homepage         = 'https://github.com/wzbozon/DKActivityButton'
  s.screenshots      = 'http://blog.alwawee.com/wp-content/uploads/2017/12/DKActivityButton.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dennis Kutlubaev' => 'kutlubaev.denis@gmail.com' }
  s.source           = { :git => 'https://github.com/wzbozon/DKActivityButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DKActivityButton/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DKActivityButton' => ['DKActivityButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
