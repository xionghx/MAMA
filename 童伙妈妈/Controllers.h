//
//  Controllers.h
//  童伙妈妈
//
//  Created by xionghuanxin on 7/4/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Controllers : UIViewController
+(UIButton *)buttonAtRect:(CGRect )rect
                withTitle:(NSString *)title
                 andTaget:(id)taget
                andAction:(void (^)(NSString *)) hander;

@end
