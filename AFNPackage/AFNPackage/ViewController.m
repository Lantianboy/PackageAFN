//
//  ViewController.m
//  AFNPackage
//
//  Created by 最爱是深蓝 on 2017/9/18.
//  Copyright © 2017年 ProductTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString * str ;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
        

    // Do any additional setup after loading the view, typically from a nib.
}
- (void)requestrecord:(NSInteger )start
{
    [HandleTools handleToolsWithStarDate:str length:start success:^(NSMutableArray * obj) {
        
    }failed:^(id obj){
        
    }] ;
    
//    [HandleTools handleToolsWithStarDate:str length:start success:^(NSMutableArray *obj){
//        NSLog(@"----%@",obj) ;
//        if (!start) {
//            self.receiveArray = obj.mutableCopy;
//            [nameArray removeAllObjects];
//            [contentDataArray removeAllObjects];
//            for (InvitRrecordsModel *model in obj) {
//                
//                [nameArray addObject:model.name];
//                
//                NSString * str = model.create_date ;
//                
//                NSTimeInterval interval=[str doubleValue] / 1000.0;
//                NSDate *date = [NSDate dateWithTimeIntervalSince1970:interval];
//                NSDateFormatter *objDateformat = [[NSDateFormatter alloc] init];
//                [objDateformat setDateFormat:@"yyyy-MM-dd "];
//                NSString * timeStr = [NSString stringWithFormat:@"%@",[objDateformat stringFromDate: date]] ;
//                
//                //NSLog(@"-----%@",timeStr) ;
//                
//                
//                NSArray* cellData = @[timeStr,model.mobile,model.invite_code,model.id_number];
//                [contentDataArray addObject:cellData];
//            }
//        } else {
//            [self.receiveArray addObjectsFromArray:obj];
//            便利数组取不通的数据
//            for (InvitRrecordsModel *model in obj) {
//                
//                [nameArray addObject:model.name];
//                
//                NSString * str = model.create_date ;
//                时间戳转时间
//                NSTimeInterval interval=[str doubleValue] / 1000.0;
//                NSDate *date = [NSDate dateWithTimeIntervalSince1970:interval];
//                NSDateFormatter *objDateformat = [[NSDateFormatter alloc] init];
//                [objDateformat setDateFormat:@"yyyy-MM-dd "];
//                NSString * timeStr = [NSString stringWithFormat:@"%@",[objDateformat stringFromDate: date]] ;
//                
//                //NSLog(@"-----%@",timeStr) ;
//                
//                
//                
//                
//                NSArray* cellData = @[timeStr,model.mobile,model.invite_code,model.id_number];
//                [contentDataArray addObject:cellData];
//            }
//        }
//        
//

//    }failed:^(id obj){
//        
//    }
//     
//     
//    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
