//
//  HZHUDView.h
//  HZ
//
//  Created by MindminiMac on 16/8/29.
//  Copyright © 2016年 hezhizhi. All rights reserved.
//

#import <MBProgressHUD.h>

typedef NS_ENUM(NSInteger, HZHUDStatus) {
    HZHUDStatusSuccess = 0,
    HZHUDStatusFailure,
    HZHUDStatusInfo,
    HZHUDStatusLoading,
    HZHUDStatusLoadingText,
    HZHUDStatusLoadingWithText,
    HZHUDStatusLoadingWithImageText,
    HZHUDStatusMiddleText,
    HZHUDStatusBottomText
};

/***  HZHUDView 封装MBProgressHUD */
@interface HZHUDView : MBProgressHUD

/** 成功提示 */
+ (void)showSuccessText:(NSString *)text;

/** 错误提示 */
+ (void)showFailureText:(NSString *)text;

/** 警告提示 */
+ (void)showInfoText:(NSString *)text;

/** 只有转圈 */
+ (void)showLoading;

/** 加载中 + 转圈 */
+ (void)showLoadingText;

/** 自定义文字 + 转圈 */
+ (void)showLoadingWithText:(NSString *)text;

/** 自定义图片 + 自定义文字 */
+ (void)showLoadingWithImage:(UIImage *)image text:(NSString *)text;

/** 中间显示纯文字 */
+ (void)showMiddleText:(NSString *)text;

/** 底部显示纯文字 */
+ (void)showBottomText:(NSString *)text;

/** 移除 */
+ (void)hideHZHUD;

@end
