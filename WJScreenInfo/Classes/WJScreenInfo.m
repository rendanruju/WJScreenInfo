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
    return self.wj_screenHeight - self.wj_navi_Height - self.wj_safeAreaInsetsBottom;
}

- (CGFloat)wj_statusBarHeight {
    return [UIApplication sharedApplication].statusBarFrame.size.height;
}

- (CGFloat)wj_safeAreaInsetsTop {
    if (@available(iOS 11.0, *)) {
        CGFloat topH = [UIApplication sharedApplication].delegate.window.safeAreaInsets.top;
        return topH;
    } else {
        // Fallback on earlier versions
        return 0.0;
    }
}

- (CGFloat)wj_safeAreaInsetsBottom {
    if (@available(iOS 11.0, *)) {
        CGFloat bottomH = [UIApplication sharedApplication].delegate.window.safeAreaInsets.bottom;
        return bottomH;
    } else {
        // Fallback on earlier versions
        return 0.0;
    }
}

- (UIEdgeInsets)wj_safeAreaInsets {
    if (@available(iOS 11.0, *)) {
        return [UIApplication sharedApplication].delegate.window.safeAreaInsets;
    } else {
        // Fallback on earlier versions
        return UIEdgeInsetsZero;
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

#pragma mark - LazyLoad
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
