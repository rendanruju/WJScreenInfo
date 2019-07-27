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

- (CGRect)frame;
- (CGFloat)kScreenWidth;
- (CGFloat)kScreenHeight;
- (CGFloat)kSafeAreaScreenHeight;
- (CGFloat)kStatusBarHeight;
- (CGFloat)kTabBarBottomHeight;
- (CGFloat)kTabbar_Height;
- (CGFloat)navigationBarHeight;
- (CGFloat)kNavi_Height;
- (CGFloat)scale;
- (CGFloat)getBorderWidth:(CGFloat)width;
- (BOOL)widthUnder375;
- (BOOL)compareSystemVersion:(CGFloat)version;

@end
