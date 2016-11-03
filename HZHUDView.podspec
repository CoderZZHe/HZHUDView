
Pod::Spec.new do |spec|

  spec.name                  = 'HZHUDView'
  spec.version               = '1.0.0'
  spec.ios.deployment_target = '6.0'
  spec.license               = 'MIT'
  spec.homepage              = 'https://github.com/CoderZZHe/HZHUDView'
  spec.author                = { "hezhizhi" => "coderhzz@163.com" }
  spec.summary               = '基于MBProgressHUD封装的简单易用提示库，提供了常见的几种方式API'
  spec.source                = { :git => 'https://github.com/CoderZZHe/HZHUDView.git', :tag => '1.0.0' }
  spec.source_files          = "HZHUDView", "*.{h,m}"
  spec.resources             = ['HZHUDView/HZHUDViewDemo/Assets.xcassets/hud_success.imageset/hud_success.png', 'HZHUDView/HZHUDViewDemo/Assets.xcassets/hud_success.imageset/hud_success@2x.png', 'HZHUDView/HZHUDViewDemo/Assets.xcassets/hud_success.imageset/hud_success@3x.png', 'HZHUDView/HZHUDViewDemo/Assets.xcassets/hud_success.imageset/hud_info.png', 'HZHUDView/HZHUDViewDemo/Assets.xcassets/hud_success.imageset/hud_info@2x.png', 'HZHUDView/HZHUDViewDemo/Assets.xcassets/hud_success.imageset/hud_info@3x.png',       'HZHUDView/HZHUDViewDemo/Assets.xcassets/hud_success.imageset/hud_error.png', 'HZHUDView/HZHUDViewDemo/Assets.xcassets/hud_success.imageset/hud_error@2x.png', 'HZHUDView/HZHUDViewDemo/Assets.xcassets/hud_success.imageset/hud_error@3x.png', 'HZHUDView/HZHUDViewDemo/Assets.xcassets/image.imageset/image.jpg']
  spec.requires_arc          = true
  spec.dependency 'MBProgressHUD', '~> 0.9.1'

end
