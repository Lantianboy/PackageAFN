//
//  HandleTools.m
//  AFNPackage
//
//  Created by 最爱是深蓝 on 2017/9/18.
//  Copyright © 2017年 ProductTest. All rights reserved.
//

#import "HandleTools.h"

@implementation HandleTools

+ (void)handleToolsWithStarDate:(NSString *)starDate
                         length:(NSInteger)length
                        success:(SuccessBlock)success
                         failed:(FailedBlock)failed
{
    //NSString * path = [API_HOST stringByAppendingString:API_InviteRecords] ;//添加宏url
    
    NSMutableDictionary * params = @{}.mutableCopy ;
    params[@"startDate"] = starDate ;
    params[@"length"] = [NSString stringWithFormat:@"%zi",length] ;
    //把参数加到字典里 NSInteger转NSString
    [[NetworkTool defaultClient] requestWithPath:@"path" method:NetworkToolPost parameters:params success:^(NSURLSessionDataTask * opertion, id responseObject) {
        
        
        if ([responseObject[@"result"][@"success"] integerValue]) {
            if (success) {
                NSMutableArray * invite = [ToolsModel mj_objectArrayWithKeyValuesArray:responseObject[@"result"][@"data"][@"invitedList"]] ;
                success(invite) ;
                //NSLog(@"===%@",invite) ;
                
            } else {
                if (failed) {
                    failed(responseObject[@"result"][@"message"]) ;
                }
            }
        }
    }failure:^(NSURLSessionDataTask * operation, NSError * error){
        if (failed) {
            failed(error.userInfo[NSLocalizedDescriptionKey]) ;
        }
    }] ;

}



@end
