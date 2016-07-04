//
//  MainPageScrollView.m
//  童伙妈妈
//
//  Created by 熊焕鑫 on 7/5/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

#import "MainPageScrollView.h"

@implementation MainPageScrollView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentSize = CGSizeMake(2*SCREEN_W, 0);
        self.backgroundColor = [UIColor redColor];
        self.pagingEnabled = YES;
        [self addSubview:[[MAMAHeaderPage alloc]init]];

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
