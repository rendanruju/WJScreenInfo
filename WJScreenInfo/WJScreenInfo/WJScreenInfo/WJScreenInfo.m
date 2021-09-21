//
//  WJScreenInfo.m
//  UINavigationControllerTest
//
//  Created by admin on 2018/6/1.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "WJScreenInfo.h"

@interface WJScreenInfo () <NSCopying, NSMutableCopying>

@property (nonatomic, strong) UINavigationController *nav;
@property (nonatomic, strong) UITabBarController *tabBarController;
@end

@implementation WJScreenInfo

#pragma mark - 单例实现
implementationSingleton(WJScreenInfo)

#pragma mark - 布局相关属性
- (CGRect)wj_frame {
    return [UIScreen mainScreen].bounds;
}
- (CGFloat)wj_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}
- (CGFloat)wj_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}
- (CGFloat)wj_safeAreaScreenHeight {
    return self.wj_screenHeight - self.wj_navi_Height - self.wj_tabBarBottomHeight;
}
- (CGFloat)wj_statusBarHeight {
    return [UIApplication sharedApplication].statusBarFrame.size.height;
}
- (CGFloat)wj_tabBarBottomHeight {
    if (@available(iOS 11.0, *)) {
        CGFloat height = [UIApplication sharedApplication].delegate.window.safeAreaInsets.bottom;
        return height;
    } else {
        // Fallback on earlier versions
        return 0.0;
    }
}
- (CGFloat)wj_tabbar_Height {
    return self.tabBarController.tabBar.frame.size.height;
}
- (CGFloat)wj_navigationBarHeight {
    return self.nav.navigationBar.frame.size.height;
}
- (CGFloat)wj_navi_Height {
    return self.wj_navigationBarHeight + self.wj_statusBarHeight;
}
- (CGFloat)wj_scale {
    return self.wj_screenWidth / 375;
}
- (CGFloat)wj_getBorderWidth:(CGFloat)width {
    return (width / [UIScreen mainScreen].scale * 2);
}
- (BOOL)wj_widthUnder375 {
    return self.wj_screenWidth < 375;
}
- (BOOL)wj_compareSystemVersion:(CGFloat)version {
    if (UIDevice.currentDevice.systemVersion.doubleValue < version) {
        return YES;
    }else {
        return NO;
    }
}
#pragma mark - 懒加载
- (UINavigationController *)nav {
    if (!_nav) {
        _nav = [[UINavigationController alloc] init];
    }
    return _nav;
}
- (UITabBarController *)tabBarController {
    if (!_tabBarController) {
        _tabBarController = [[UITabBarController alloc] init];
    }
    return _tabBarController;
}
@end
