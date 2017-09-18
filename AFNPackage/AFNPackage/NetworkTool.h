//
//  NetworkTool.h
//  AFNPackage
//
//  Created by 最爱是深蓝 on 2017/9/18.
//  Copyright © 2017年 ProductTest. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

typedef NS_ENUM(NSInteger, NetworkToolType){
    
    NetworkToolGet,
    NetworkToolPost,
   
    
};

@interface NetworkTool : NSObject

@property (nonatomic, strong) AFHTTPSessionManager *manager;

+ (NetworkTool * )defaultClient ;

/**
 http 请求

 @param url             url地址
 @param method get      post枚举类型
 @param parameters      参数
 @param success         成功的回调
 @param failure         失败的回调
 */
- (void)requestWithPath:(NSString *)url
                 method:(NetworkToolType)method
             parameters:(NSMutableDictionary *)parameters
                success:(void (^) (NSURLSessionDataTask *operation, id responseObject))success
                failure:(void (^) (NSURLSessionDataTask *operation, NSError *error))failure;






@end
