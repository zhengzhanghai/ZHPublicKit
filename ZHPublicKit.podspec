#
#  Be sure to run `pod spec lint ZHPublicKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


Pod::Spec.new do |s|
  s.name             = 'ZHPublicKit'
  s.version          = '0.1.1'
  s.summary          = 'ZHPublicKit发布各种公有库测试'
  s.description      = "ZHPublicKit，库依赖、创建子文件夹、子文件夹依赖、加路径下载等等的一个测试"
  s.homepage         = 'https://github.com/zhengzhanghai/ZHPublicKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhengzhanghai' => 'zzh_xiaohai@163.com' }
  s.source           = { :git => 'https://github.com/zhengzhanghai/ZHPublicKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  # s.source_files = 'classes/core/**/*.txt'

  # 建立一个子目录core
  s.subspec 'core' do |ss|
    # ss.source_files = 'classes/core/**/*.txt'
  end

  # 创建子目录的子目录
  ss.subspec 'txt' da |sss|
    sss.source_files = 'classes/core/**/*.txt'
  end 
  
  # s.resource_bundles = {
  #   'ZHCommon' => ['ZHCommon/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
