//
//  ViewController.m
//  NIST_SocketManager
//
//  Created by 范云飞 on 2017/10/19.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import "ViewController.h"

#import "NIST_GCDAsyncSocketCommunicationManager.h"
#import "NIST_GCDConnectConfig.h"

#define kDefaultChannel @"dkf"

@interface ViewController ()
@property (nonatomic, strong) NIST_GCDConnectConfig * connectConfig;
@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 1. 使用默认的连接环境
    [[NIST_GCDAsyncSocketCommunicationManager sharedInstance] createSocketWithToken:@"f14c4e6f6c89335ca5909031d1a6efa9" channel:kDefaultChannel];
    
    // 2.自定义配置连接环境
    [[NIST_GCDAsyncSocketCommunicationManager sharedInstance] createSocketWithConfig:self.connectConfig];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // your request params
    NSDictionary *requestBody = @{};
    [[NIST_GCDAsyncSocketCommunicationManager sharedInstance] socketWriteDataWithRequestType:NIST_GCDRequestType_GetConversationsList requestBody:requestBody completion:^(NSError * _Nullable error, id  _Nullable data) {
        // do something
        if (error)
        {
            
        }
        else
        {
            
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NIST_GCDConnectConfig *)connectConfig
{
    if (!_connectConfig)
    {
        _connectConfig = [[NIST_GCDConnectConfig alloc] init];
        _connectConfig.channels = kDefaultChannel;
        _connectConfig.currentChannel = kDefaultChannel;
        _connectConfig.host = @"online socket address";
        _connectConfig.port = 7070;
        _connectConfig.socketVersion = 5;
    }
    _connectConfig.token = @"f14c4e6f6c89335ca5909031d1a6efa9";
    
    return _connectConfig;
}

@end
