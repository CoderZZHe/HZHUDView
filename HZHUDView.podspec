
Pod::Spec.new do |s|

  s.name                  = 'HZHUDView'
  s.version               = '1.0.0'
  s.ios.deployment_target = '6.0'
  s.license               = 'MIT'
  s.homepage              = 'https://github.com/CoderZZHe/HZHUDView'
  s.author                = { "hezhizhi" => "coderhzz@163.com" }
  s.summary               = '基于MBProgressHUD封装的简单易用提示库，提供了常见的几种方式API'
  s.source                = { :git => 'https://github.com/CoderZZHe/HZHUDView.git', :tag => '1.0.0' }
  s.source_files          = "HZHUDView", "*.{h,m}"
  s.resources          = "HZHUDView/HZHUDView.bundle"
  s.requires_arc          = true
  s.dependency 'MBProgressHUD', '~> 0.9.1'

end
