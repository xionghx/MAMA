//
//  MainPageScrollView.h
//  童伙妈妈
//
//  Created by 熊焕鑫 on 7/5/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MAMAHeaderPage.h"
@interface MainPageScrollView : UIScrollView
@property(nonatomic,strong)MAMAHeaderPage * aPage;
@property(nonatomic,strong)UISegmentedControl *segmentedControl;

@end
