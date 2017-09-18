//
//  NetworkTool.m
//  AFNPackage
//
//  Created by 最爱是深蓝 on 2017/9/18.
//  Copyright © 2017年 ProductTest. All rights reserved.
//

#import "NetworkTool.h"

@interface NetworkTool()
{
    BOOL _isAlertShow ;
}

@end

@implementation NetworkTool

+ (NetworkTool * )defaultClient
{
    static NetworkTool * instance = nil ;
    static dispatch_once_t onceToken ;
    
    dispatch_once(&onceToken, ^{
        //保证单例线程安全
        dispatch_sync(dispatch_get_global_queue(0, 0), ^{
            instance = [[NetworkTool alloc] init] ;
        }) ;
    }) ;
    return instance ;
}

- (instancetype) init {
    if (self = [super init]) {
        self.manager = [AFHTTPSessionManager manager] ;
        //配置请求
        self.manager.responseSerializer = [AFJSONResponseSerializer serializer] ;
        //设置返回格式
        self.manager.requestSerializer = [AFJSONRequestSerializer serializer] ;
        //设置请求格式
        self.manager.requestSerializer.timeoutInterval = 10 ;
        //请求时间
    }
    return self ;
}

- (void)requestWithPath:(NSString *)url method:(NetworkToolType)method parameters:(NSMutableDictionary *)parameters success:(void (^)(NSURLSessionDataTask *, id))success failure:(void (^)(NSURLSessionDataTask *, NSError *))failure
{
    
    if (method == NetworkToolGet) {
//        [self.manager GET:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//                                if (success) {
//                                    //[SVProgressHUD dismiss];
//            
//                                    success(task,responseObject);
//                                }
//                            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//                                if (failure) {
//                                    failure(task,error);
//                                }
//                           }];

    } else if (method == NetworkToolPost) {
    
        [self.manager POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            //                    #ifdef DEBUG
            NSLog(@"url = %@, res = %@",url,responseObject);
            //                    #endif
            
            if (success) {
                success(task, responseObject);
            }
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            failure(task, error);
            
            
        }];
        

    }
    
    
}

@end
