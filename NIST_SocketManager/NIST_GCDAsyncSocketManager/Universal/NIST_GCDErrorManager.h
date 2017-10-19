//
//  NIST_GCDErrorManager.h
//  NIST_SocketManager
//
//  Created by 范云飞 on 2017/10/19.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NIST_GCDErrorManager : NSObject
// 服务器定义错误信息
#define GAC_REQUEST_TIMEOUT                @"请求超时"
#define GAC_REQUEST_PARAM_ERROR            @"入参错误"
#define GAC_REQUEST_ERROR                  @"请求失败"
#define GAC_SERVER_MAINTENANCE_UPDATES     @"用户状态丢失"
#define GAC_AUTHAPPRAISAL_FAILED           @"Token 失效"
// SDK内定义错误信息
#define GAC_NETWORK_DISCONNECTED           @"网络断开"
#define GAC_LOCAL_REQUEST_TIMEOUT          @"本地请求超时"
#define GAC_JSON_PARSE_ERROR               @"JSON 解析错误"
#define GAC_LOCAL_PARAM_ERROR              @"本地入参错误"

+ (NSError *)errorWithErrorCode:(NSInteger)errorCode;
@end
