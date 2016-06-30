//
//  UIColor+string.h
//  HsScrollNavigationDemo
//
//  Created by dcpSsss on 16/6/29.
//  Copyright © 2016年 dcpSsss. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    BlueColor = 0,
    OrangeColor = 1,
    RedColor = 2,
    BlackColor = 3
} ColorName;

@interface UIColor (string)

+(UIColor *)colorWithName:(ColorName)name;

@end
