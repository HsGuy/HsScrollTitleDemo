//
//  HsTestView.m
//  HsScrollNavigationDemo
//
//  Created by dcpSsss on 16/4/12.
//  Copyright © 2016年 dcpSsss. All rights reserved.
//

#import "HsTestView.h"

@implementation HsTestView

- (instancetype)initWithFrame:(CGRect)frame withTitle:(NSString *)title
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
        label.text = title;
        label.center = CGPointMake(CGRectGetWidth(self.frame)/2, CGRectGetHeight(self.frame)/2);
        label.textColor = [UIColor redColor];
        label.font = [UIFont systemFontOfSize:30];
        label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
