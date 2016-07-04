//
//  Controllers.m
//  童伙妈妈
//
//  Created by xionghuanxin on 7/4/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

#import "Controllers.h"

@interface Controllers ()

@end

@implementation Controllers

- (void)viewDidLoad {
    [super viewDidLoad];
}


+(UIButton *)buttonAtRect:(CGRect )rect
                withTitle:(NSString *)title
                 andTaget:(id)taget
                andAction:(void (^)(NSString *)) hander
{
    UIButton  *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = rect;
    [button setTitle:title forState:UIControlStateNormal];
//    [button addTarget:taget action:sel forControlEvents:UIControlEventTouchUpInside];
    return button;

}

@end
