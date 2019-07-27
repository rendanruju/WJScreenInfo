//
//  WJSingleHeader.h
//  GK
//
//  Created by admin on 2019/4/12.
//  Copyright © 2019 innotech. All rights reserved.
//

#ifndef SingleHeader_h
#define SingleHeader_h

// 以后就可以使用interfaceSingleton来替代后面方法的声明
#define interfaceSingleton  + (instancetype)sharedInstance;

#if __has_feature(objc_arc)
// ARC
#define implementationSingleton(name) \
static name *_instance = nil; \
+ (instancetype)sharedInstance { \
return [[self alloc] init]; \
} \
+ (instancetype)allocWithZone:(NSZone *)zone { \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
- (id)copyWithZone:(NSZone *)zone { \
return _instance; \
} \
- (id)mutableCopyWithZone:(NSZone *)zone { \
return _instance; \
} \
- (instancetype)init { \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super init]; \
}); \
return _instance; \
} \

#endif

#endif /* SingleHeader_h */
