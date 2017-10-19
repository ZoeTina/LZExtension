#
#  Be sure to run `pod spec lint LZExtension.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


#  s.name 	是你的项目名
#  s.version 	是你项目的版本号
#  s.summary 	是简单的描述
#  s.homepage 	是你这个项目的Github地址
#  s.authors 	是作者和邮箱
#  s.source 	是下面这个HTTPS地址


Pod::Spec.new do |s|
  s.name          = 'LZExtension'
  s.version       = '1.0.0'
  s.license       = { :type => 'MIT', :file => 'LICENSE' }
  s.summary       = 'A LZExtension in iOS.'
  s.homepage      = 'https://github.com/ZoeTina/LZExtension'
  s.authors       = { '佐伊' => '136769890@qq.com' }
  s.source        = { :git => "https://github.com/ZoeTina/LZExtension.git", :tag => s.version.to_s}
  s.platform      = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc  = true
  s.source_files  = "LZExtension", "*.{h,m}"
  s.public_header_files = 'YYKit/**/*.{h}'
end
