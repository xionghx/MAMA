//
//  MainPage.m
//  童伙妈妈
//
//  Created by xionghuanxin on 7/4/16.
//  Copyright © 2016 xionghuanxin. All rights reserved.
//

#import "MainPage.h"
#import "XAlertViewHelper.h"
#import "Controllers.h"
#import "XNavigationController.h"
#import "MAMAHeaderPage.h"
#import "AFNetworking.h"
#import "APIConfig.h"
#import "NetRequest.h"
#import "MainPageScrollView.h"

@interface MainPage ()
@property(nonatomic,strong)UIButton *aButton;
@property(nonatomic,strong)UIScrollView *scrollView;

@end

@implementation MainPage
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.automaticallyAdjustsScrollViewInsets = NO;
            }
    return self;
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:self.aButton];
    [self.view addSubview:self.scrollView];
//    [Controllers buttonAtRect:CGRectMake(200, 200, 50, 50) withTitle:@"asd" andTaget:self andAction:@selector(butt)];
//    [self.view addSubview:[[MainPageScrollView alloc]initWithFrame:CGRectMake(0, 64, SCREEN_W, 603) ]];
    [((XNavigationController *)self.navigationController).segmentedControl addTarget:self action:@selector(segmentedControlValueChanged) forControlEvents:UIControlEventValueChanged];

}

- (void)sendRequest {
    void (^block)(NSString *);
    block = ^(NSString * a){
        NSLog(@"%@",a);
    };
    block(@"dfa");
    //初始化网络请求管理类
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //请求超时时间
    manager.requestSerializer.timeoutInterval = 10;
    //默认的提交数据格式是二进制格式，返回数据的格式是JSON格式
    //设置请求格式：二进制
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    //设置返回数据格式：JSON
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    //配置MIME类型
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
    
    NSDictionary *parameters = @{
                                 @"m": @"article",
                                 @"a":@"getArticleCateList",
                                 @"channelId":@"1000001",
                                 };
    
    
        [manager POST:POST_URL parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    
            NSLog(@"POST:%@",responseObject);
    
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    
            NSLog(@"POST:%@",error.localizedDescription);
    
    
        }];

}

-(UIButton *)aButton
{
    if (_aButton == nil) {
        _aButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_aButton addTarget:self action:@selector(buttonTaped) forControlEvents:UIControlEventTouchUpInside];
        _aButton.bounds = CGRectMake(0, 0, 60, 60);
        _aButton.center = CGPointMake(200, 200);
        [_aButton setTitle:@"showAlert" forState:UIControlStateNormal];
        [_aButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    }
    NSLog(@"%ld",((XNavigationController *)self.navigationController).segmentedControl.selectedSegmentIndex);
    return _aButton;
}

-(UIScrollView *)scrollView
{
    if (_scrollView == nil) {
        _scrollView = [[MainPageScrollView alloc]initWithFrame:CGRectMake(0, 64, SCREEN_W, 603)];
//        _scrollView.contentSize = CGSizeMake(2*SCREEN_W, 0);
//        _scrollView.backgroundColor = [UIColor redColor];
//        _scrollView.pagingEnabled = YES;
//        [_scrollView addSubview:self.aButton];
//        [_scrollView addSubview:[[MAMAHeaderPage alloc]init]];
    }
    return _scrollView;
}
-(void)butt
{
    
}



-(void)buttonTaped
{
    void (^block)(NSString *);
    block = ^(NSString * a){
        NSLog(@"%@",a);
    };
    block(@"dfa");
    //初始化网络请求管理类
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //请求超时时间
    manager.requestSerializer.timeoutInterval = 10;
    //默认的提交数据格式是二进制格式，返回数据的格式是JSON格式
    //设置请求格式：二进制
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    //设置返回数据格式：JSON
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    //配置MIME类型
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];

    NSDictionary *parameters = @{
                                 @"m": @"article",
                                 @"a":@"getArticleList",
                                 @"channelId":@"1000001",
                                 };

    
    [manager POST:POST_URL parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"POST:%@",responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"POST:%@",error.localizedDescription);
        
        
    }];
}

-(void)segmentedControlValueChanged
{
    switch (((XNavigationController *)self.navigationController).segmentedControl.selectedSegmentIndex) {
        case 0:
            [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
            break;
        case 1:
            [self.scrollView setContentOffset:CGPointMake(SCREEN_W, 0) animated:YES];
            break;
        default:
            break;
    }
}

@end
