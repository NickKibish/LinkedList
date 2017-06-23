#
# Be sure to run `pod lib lint NKLinkedList.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NKLinkedList'
  s.version          = '0.1.0'
  s.summary          = 'Implementation of LinkedList structure on Swift language'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  One of the most common data structures.
                       DESC

  s.homepage         = 'https://github.com/NickKibish/LinkedList.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mykola Kibysh' => 'mykola.kibysh@ticketmaster.com' }
  s.source           = { :git => 'https://github.com/NickKibish/LinkedList.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'NKLinkedList/**/*'
end
