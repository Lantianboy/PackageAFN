//
//  HandleTools.h
//  AFNPackage
//
//  Created by 最爱是深蓝 on 2017/9/18.
//  Copyright © 2017年 ProductTest. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"
#import "NetworkTool.h"
#import "ToolsModel.h"



/**
 *  Handler处理成功时调用的Block
 *  @param obj 为客户端需要的数据
 */
typedef void (^SuccessBlock)(id obj);

/**
 *  Handler处理失败时调用的Block
 *  @param obj 为错误信息
 */
typedef void (^FailedBlock)(id obj);



@interface HandleTools : NSObject

/**
 请求处理方法

 @param starDate      参数
 @param success       成功回调
 @param failed        失败回调
 */
+ (void)handleToolsWithStarDate:(NSString *)starDate
                         length:(NSInteger)length
                        success:(SuccessBlock)success
                         failed:(FailedBlock)failed ;


@end
