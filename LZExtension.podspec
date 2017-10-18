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
  s.name         = "LZExtension"
  s.version      = "0.0.1"
  s.summary      = "A 简单的扩展类 of LZExtension."
  s.homepage     = "https://github.com/ZoeTina/LZExtension"
  s.license      = "MIT"
  s.author       = { "佐伊" => "136769890@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/ZoeTina/LZExtension.git", :tag => "0.0.2" }
  s.source_files = "LZExtension", "LZExtension/**/*.{h,m}"
  s.framework    = "UIKit"
  # s.frameworks = "SomeFramework", "AnotherFramework"

end
