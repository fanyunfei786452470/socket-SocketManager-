//
//  NIST_GCDKeyChainManager.h
//  NIST_SocketManager
//
//  Created by 范云飞 on 2017/10/19.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NIST_GCDKeyChainManager : NSObject
@property (nonatomic, strong) NSString *token;

+ (NIST_GCDKeyChainManager *)sharedInstance;

@end
