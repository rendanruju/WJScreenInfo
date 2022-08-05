//
//  WJScreenInfo.h
//  UINavigationControllerTest
//
//  Created by admin on 2018/6/1.
//  Copyright © 2018年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WJSingleHeader.h"

@interface WJScreenInfo : NSObject

interfaceSingleton

- (CGRect)wj_frame;
- (CGFloat)wj_screenWidth;
- (CGFloat)wj_screenHeight;
- (CGFloat)wj_safeAreaScreenHeight;
- (CGFloat)wj_statusBarHeight;
- (CGFloat)wj_safeAreaInsetsTop;
- (CGFloat)wj_safeAreaInsetsBottom;
- (UIEdgeInsets)wj_safeAreaInsets;
- (CGFloat)wj_tabbar_Height;
- (CGFloat)wj_navigationBarHeight;
- (CGFloat)wj_navi_Height;
- (CGFloat)wj_scale;
- (CGFloat)wj_getBorderWidth:(CGFloat)width;
- (BOOL)wj_widthUnder375;
- (BOOL)wj_compareSystemVersion:(CGFloat)version;

@end
