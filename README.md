# HZHUDView
  基于MBProgressHUD（0.9.1版）封装的提示信息，有常用的几种API。直接把HZHUDView文件夹拖进项目，再导入MBProgressHUD（0.9.1版）即可
  
  ***
  * 成功提示
   
    ` + (void)showSuccessText:(NSString *)text;` 
    
    ![成功](http://upload-images.jianshu.io/upload_images/1115226-56d177f6eb7bc836.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

***
* 失败提示

   `+ (void)showFailureText:(NSString *)text;`
   
   ![失败](http://upload-images.jianshu.io/upload_images/1115226-25179da9473f085b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
   
   ***
* 警告提示

   `+ (void)showInfoText:(NSString *)text;`
   
   ![警告](http://upload-images.jianshu.io/upload_images/1115226-00d4d204aa718420.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
   
   ***
* 只有转圈

   `+ (void)showLoading;`
   
   ![转圈](http://upload-images.jianshu.io/upload_images/1115226-3a5db612016ddc00.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
   
   ***
* 加载中 + 转圈

   `+ (void)showLoadingText;`
   
   ![加载转圈](http://upload-images.jianshu.io/upload_images/1115226-83f2b77567b216ee.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
   
   ***
* 自定义文字 + 转圈

   `+ (void)showLoadingWithText:(NSString *)text;`
   
   ![自定义文字转圈](http://upload-images.jianshu.io/upload_images/1115226-19429c8e3147ad36.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
   
   ***
* 自定义图片 + 自定义文字

   `+ (void)showLoadingWithImage:(UIImage *)image text:(NSString *)text;`
   
   ![自定义图片 + 自定义文字](http://upload-images.jianshu.io/upload_images/1115226-5e7cd3ebeb63cc89.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
   
   ***
* 中间显示纯文字

   `+ (void)showMiddleText:(NSString *)text;`
   
   ![中间纯文字](http://upload-images.jianshu.io/upload_images/1115226-09b70ffc70a1fcdf.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
   
   ***
* 底部显示纯文字

   `+ (void)showBottomText:(NSString *)text;`
   
   ![底部纯文字](http://upload-images.jianshu.io/upload_images/1115226-85d5c21a46443c46.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
   
   ***
* 隐藏

   `+ (void)hideHZHUD;`
 