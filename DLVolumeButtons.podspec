#
# Be sure to run `pod lib lint DLVolumeButtons.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DLVolumeButtons'
  s.version          = '0.1.3'
  s.summary          = '捕捉音量键事件，不显示系统音量窗口。捕捉音量事件，可以控制继续修改音量，也可以不修改音量。'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/daiquanxiang/DLVolumeButtons'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'daiquanxiang' => '919775874@qq.com' }
  s.source           = { :git => 'https://github.com/daiquanxiang/DLVolumeButtons.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DLVolumeButtons/Classes/**/*.{h,m}'
end
