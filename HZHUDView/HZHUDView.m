//
//  HZHUDView.m
//  HZ
//
//  Created by MindminiMac on 16/8/29.
//  Copyright © 2016年 hezhizhi. All rights reserved.
//


#import "HZHUDView.h"

static CGFloat const delyedTime = 10.0;
static CGFloat const sfiTime = 2.5;
static CGFloat const margin = 10.0f;
static CGFloat const maxmargin = 15.0f;

@implementation HZHUDView

#define ShowView [[UIApplication sharedApplication].windows lastObject]
#define HUDImage(imageName) [UIImage imageNamed:imageName]
#define FONTSIZE(SIZE) [UIFont systemFontOfSize:SIZE]
#define ScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define ScreenHeight ([UIScreen mainScreen].bounds.size.height)
#define HUDFontSize 13.0f
#define MIN_WIDTH 100.0f
    
// 获取bundle中文件的路径
#define HZZPathResoce(name) [[[NSBundle mainBundle] pathForResource:@"HZHUDView.bundle" ofType:nil] stringByAppendingPathComponent:name]

+ (void)showStatus:(HZHUDStatus)status image:(UIImage *)image text:(NSString *)text hide:(NSTimeInterval)time{
    
    // 快速创建一个提示信息的HUD
    HZHUDView *hud = [HZHUDView showHUDAddedTo:ShowView animated:YES];
    hud.userInteractionEnabled = NO;
    
    // 隐藏时从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 设置菊花颜色  只能设置菊花的颜色
    hud.activityIndicatorColor = [UIColor whiteColor];
    
    // 设置一个渐变层
    //   hud.dimBackground = YES;
    
    // 设置显示和隐藏动画类型  有三种动画效果，如下
    hud.animationType = MBProgressHUDAnimationFade; //默认类型的，渐变
    //    hud.animationType = MBProgressHUDAnimationZoom; //HUD的整个view后退 然后逐渐的后退
    //    hud.animationType = MBProgressHUDAnimationZoomIn; //和上一个相反，前近，最后淡化消失
    
    // 显示文字
    hud.labelText = text;
    // 文字大小
    hud.labelFont = FONTSIZE(HUDFontSize);
    
    // 设置各个元素距离矩形边框的距离
    if (status == HZHUDStatusMiddleText || status == HZHUDStatusBottomText) {
        hud.margin = margin;
    }else{
        hud.margin = maxmargin;
    }
    
    switch (status) {
            
        case HZHUDStatusSuccess:   // 成功
        {
            // 是否强制背景框宽高相等
            hud.square = YES;
            [hud setMinSize:CGSizeMake(MIN_WIDTH, MIN_WIDTH)];
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *successView = [[UIImageView alloc] initWithImage:image];
            hud.customView = successView;
            [hud hide:YES afterDelay:time];
        }
            break;
            
        case HZHUDStatusFailure:   // 失败
        {
            hud.square = YES;
            [hud setMinSize:CGSizeMake(MIN_WIDTH, MIN_WIDTH)];
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *failureView = [[UIImageView alloc] initWithImage:image];
            hud.customView = failureView;
            [hud hide:YES afterDelay:time];
        }
            break;
            
        case HZHUDStatusInfo:   // 警告
        {
            hud.square = YES;
            [hud setMinSize:CGSizeMake(MIN_WIDTH, MIN_WIDTH)];
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *infoView = [[UIImageView alloc] initWithImage:image];
            hud.customView = infoView;
            [hud hide:YES afterDelay:time];
        }
            break;
            
        case HZHUDStatusLoading:   // 转圈
        {
            hud.mode = MBProgressHUDModeIndeterminate;
        }
            break;
            
        case HZHUDStatusLoadingText:   // 加载中 + 转圈
        {
            hud.mode = MBProgressHUDModeIndeterminate;
        }
            break;
            
        case HZHUDStatusLoadingWithText:   // 自定义文字 + 转圈
        {
            hud.mode = MBProgressHUDModeIndeterminate;
        }
            break;
            
        case HZHUDStatusLoadingWithImageText:   // 自定义图片 + 自定义文字
        {
            hud.square = YES;
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
            hud.customView = imageView;
            [hud hide:YES afterDelay:time];
        }
            break;
            
        case HZHUDStatusMiddleText:   // 中间纯文字
        {
            hud.mode = MBProgressHUDModeText;
            [hud hide:YES afterDelay:time];
        }
            break;
            
        case HZHUDStatusBottomText:   // 底部纯文字
        {
            hud.mode = MBProgressHUDModeText;
            CGFloat bottomSpaceY = 0.0;
            if (ScreenHeight == 480) {
                bottomSpaceY = 150.0f;
            }else if(ScreenHeight == 568){
                bottomSpaceY = 180.0f;
            }else{
                bottomSpaceY = 200.0f;
            }
            hud.yOffset = bottomSpaceY;
            [hud hide:YES afterDelay:time];
        }
            break;
            
        default:
            break;
    }
    
    
    // 设置背景框的透明度   默认0.8
    //   hud.opacity = 1;
    
    // 设置背景框的背景颜色和透明度， 设置背景颜色之后opacity属性的设置将会失效
    //   hud.color = [UIColor redColor];
    //   hud.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:1];
    //   hud.color = [hud.color colorWithAlphaComponent:1];
    
    // 设置最短显示时间，为了避免显示后立刻被隐藏   默认是0
    //   HUD.minShowTime = 10;
    
    // 进度指示器  模式是0，取值从0.0————1.0
    //   HUD.progress = 0.5;
    // 隐藏时候的回调 隐藏动画结束之后
    //   hud.completionBlock = ^(){
    //        NSLog(@"abnnfsfsf");
    //    };
    // 设置任务，在hud上显示任务的进度
    //  [hud showWhileExecuting:@selector(myProgressTask) onTarget:self withObject:nil animated:YES];
}

/** 成功提示 */
+ (void)showSuccessText:(NSString *)text{
    [self hideHZHUD];
    UIImage *successImage = [UIImage imageWithContentsOfFile:HZZPathResoce(@"hud_success")];
    [self showStatus:HZHUDStatusSuccess image:successImage text:text hide:sfiTime];
}

/** 错误提示 */
+ (void)showFailureText:(NSString *)text{
    [self hideHZHUD];
    UIImage *errorImage = [UIImage imageWithContentsOfFile:HZZPathResoce(@"hud_error")];
    [self showStatus:HZHUDStatusFailure image:errorImage text:text hide:sfiTime];
}

/** 警告提示 */
+ (void)showInfoText:(NSString *)text{
    [self hideHZHUD];
    UIImage *infoImage = [UIImage imageWithContentsOfFile:HZZPathResoce(@"hud_info")];
    [self showStatus:HZHUDStatusInfo image:infoImage text:text hide:sfiTime];
}

/** 只有转圈 */
+ (void)showLoading{
    [self hideHZHUD];
    [self showStatus:HZHUDStatusLoading image:nil text:nil hide:delyedTime];
}

/** 加载中 + 转圈 */
+ (void)showLoadingText{
    [self hideHZHUD];
    [self showStatus:HZHUDStatusLoadingText image:nil text:@"加载中..." hide:delyedTime];
}

/** 自定义文字 + 转圈 */
+ (void)showLoadingWithText:(NSString *)text{
    [self hideHZHUD];
    [self showStatus:HZHUDStatusLoadingWithText image:nil text:text hide:delyedTime];
}

/** 自定义图片 + 自定义文字 */
+ (void)showLoadingWithImage:(UIImage *)image text:(NSString *)text{
    [self hideHZHUD];
    [self showStatus:HZHUDStatusLoadingWithImageText image:image text:text hide:sfiTime];
}

/** 中间显示纯文字 */
+ (void)showMiddleText:(NSString *)text{
    [self hideHZHUD];
    [self showStatus:HZHUDStatusMiddleText image:nil text:text hide:delyedTime];
}

/** 底部显示纯文字 */
+ (void)showBottomText:(NSString *)text{
    [self hideHZHUD];
    [self showStatus:HZHUDStatusBottomText image:nil text:text hide:delyedTime];
}

/** 移除 */
+ (void)hideHZHUD{
    [HZHUDView hideAllHUDsForView:ShowView animated:YES];
    [HZHUDView hideHUDForView:ShowView animated:YES];
}

@end
