//
//  UIColor+string.m
//  HsScrollNavigationDemo
//
//  Created by dcpSsss on 16/6/29.
//  Copyright © 2016年 dcpSsss. All rights reserved.
//

#import "UIColor+string.h"

@implementation UIColor (string)

+(UIColor *)colorWithName:(ColorName)name{
    switch (name) {
        case RedColor:
            return [UIColor redColor];
            break;
            
        case OrangeColor:
            return [UIColor orangeColor];
            break;
            
        case BlueColor:
            return [UIColor blueColor];
            break;
            
        case BlackColor:
            return [UIColor blackColor];
            break;
        default:
            break;
    }
    return [UIColor whiteColor];
}

@end
