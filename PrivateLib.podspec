#
# Be sure to run `pod lib lint PrivateLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PrivateLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PrivateLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/cmhfx1/PrivateLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cmhfx1@gmail.com' => '702665521@qq.com' }
  s.source           = { :git => 'https://github.com/cmhfx1/PrivateLib.git', :tag => '0.1.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '11.0'
  
  s.subspec 'Dog' do |dg|
    dg.public_header_files = 'PrivateLib/Classes/Dog/*.h'
    dg.source_files        = 'PrivateLib/Classes/Dog/*.{h,m,c}'
  end
  
  s.subspec 'Person' do |ps|
      ps.source_files        = 'PrivateLib/Classes/Person/**/*.{h,m,c}'
      ps.dependency 'AFNetworking', '~> 2.3'
  end
  
  #s.source_files = 'PrivateLib/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PrivateLib' => ['PrivateLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
