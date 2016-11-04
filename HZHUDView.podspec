Pod::Spec.new do |s|

  s.name         = "HZHUDView"
  s.version      = "1.0.0"
  s.ios.deployment_target = '6.0'
  s.summary      = "封装MBProgressHUD简单易用库，有常用的几种API"
  s.homepage     = "https://github.com/CoderZZHe/HZHUDView"
  s.license              = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "HZZ" => "coderhzz@163.com" }
  s.social_media_url   = "http://weibo.com/u/3174616457"
  s.source       = { :git => "https://github.com/CoderZZHe/HZHUDView.git", :tag => "1.0.0" }
  s.source_files  = "HZHUDView/*.{h,m}"
  s.resources          = "HZHUDView/HZHUDView.bundle"
  s.requires_arc = true
  s.dependency "MBProgressHUD", '~> 0.9.1'

end
