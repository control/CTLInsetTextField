#
# Be sure to run `pod lib lint CTLInsetTextField.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CTLInsetTextField"
  s.version          = "0.3.0"
  s.summary          = "A simple UITextField subclass that adds padding insets"
  s.description      = <<-DESC
                       A simple UITextField subclass that adds padding insets. Inspired by IPInsetLabel.
                       DESC
  s.homepage         = "https://github.com/doublerebel/CTLInsetTextField"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Charles Phillips" => "charles@doublerebel.com" }
  s.source           = { :git => "https://github.com/doublerebel/CTLInsetTextField.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/doublerebel'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'CTLInsetTextField' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
