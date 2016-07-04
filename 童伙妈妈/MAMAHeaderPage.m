//
//  MAMAHeaderPage.m
//  童伙妈妈
//
//  Created by xionghuanxin on 7/4/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

#import "MAMAHeaderPage.h"

@interface MAMAHeaderPage ()
@property(nonatomic,strong)UISegmentedControl * segmentedControl;

@end

@implementation MAMAHeaderPage

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    [self.view addSubview:self.segmentedControl];
//}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(SCREEN_W, 0, SCREEN_W, 20);
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.segmentedControl];
    }
    return self;
}

-(UISegmentedControl *)segmentedControl
{
    if (_segmentedControl == nil) {
        _segmentedControl = [[UISegmentedControl alloc]initWithItems:@[@"全部",@"娱乐影视",@"亲子教育",@"社会万象",@"生活购物",@"热点聚焦"]];
//        _segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
    }
    return _segmentedControl;
}

@end
