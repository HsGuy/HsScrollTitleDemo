//
//  ViewController.m
//  HsScrollNavigationDemo
//
//  Created by dcpSsss on 16/4/11.
//  Copyright © 2016年 dcpSsss. All rights reserved.
//

#import "ViewController.h"
#import "HsScrollTitleView.h"
#import "HsTestView.h"
@interface ViewController ()<HsScrollTitleViewDelegate,UIScrollViewDelegate>{
    NSArray *array;
    UIScrollView *_scrollView;
    HsScrollTitleView *titleView;
}

@end

@implementation ViewController

- (void)loadView{
    [super loadView];
    array = @[@"第四代火影",@"漩涡鸣人",@"佐助",@"春野樱",@"漩涡玖辛奈",@"Angelababy",@"风影",@"小南是个大美女"];
    titleView = [[HsScrollTitleView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44) withTitles:array withTitleFont:[UIFont systemFontOfSize:18]];
    titleView.titleViewDelegate = self;
    self.navigationItem.titleView = titleView;
    
    [self customAppearance];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)customAppearance{
    self.automaticallyAdjustsScrollViewInsets = NO;
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    _scrollView.delegate = self;
    _scrollView.pagingEnabled = YES;
    _scrollView.backgroundColor = [UIColor whiteColor];
    _scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * array.count, 0);
    [self.view addSubview:_scrollView];
    _scrollView.contentInset = UIEdgeInsetsZero;
    CGFloat W = self.view.frame.size.width;
    CGFloat H = self.view.frame.size.height;
    for (NSInteger i = 0; i<array.count; i++) {
        CGFloat testW = i*W;
        HsTestView *testView = [[HsTestView alloc] initWithFrame:CGRectMake(testW, 0, W, H) withTitle:array[i]];
        NSInteger x = arc4random()%255;
        testView.backgroundColor =[UIColor colorWithRed:x/255.f green:x/255.f blue:x/255.f alpha:1];
        [_scrollView addSubview:testView];
    }
}

- (void)didSelectedTitleAtIndex:(NSInteger)index{
    [UIView animateWithDuration:0.3 animations:^{
        CGFloat xOffset = index * self.view.frame.size.width;
        _scrollView.contentOffset = CGPointMake(xOffset , 0);
    }];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSInteger index = scrollView.contentOffset.x / self.view.frame.size.width;
    [titleView setTitleIndex:index];
}

@end
