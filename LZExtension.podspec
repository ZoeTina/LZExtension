
Pod::Spec.new do |s|
    s.name         = "LZExtension"
    s.version      = "1.0.0"
    s.ios.deployment_target = '8.0'
    s.summary      = "A collection of iOS components."
    s.homepage     = "https://github.com/ZoeTina/LZExtension"
    s.license            = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "佐伊" => "136769890@qq.com" }
    
    s.platform     = :ios
    s.social_media_url   = "http://weibo.com/u/1625323685"
    s.source        = { :git => "https://github.com/ZoeTina/LZExtension.git", :tag => s.version }
    s.source_files  = "LZExtension/**/*.{h,m}"
    s.public_header_files = 'LZExtension/**/*.{h}'
    s.requires_arc = true
end