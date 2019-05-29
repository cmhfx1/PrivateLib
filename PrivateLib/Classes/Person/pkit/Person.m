//
//  Person.m
//  PrivateLib
//
//  Created by fx on 2019/5/26.
//

#import "Person.h"
#import <AFNetworking/AFNetworking.h>

@interface Person(){
    __strong AFNetworkReachabilityManager *_manager;
}
@end

@implementation Person
- (void)say{
    NSLog(@"person say www");
        
    AFNetworkReachabilityManager * manager = [AFNetworkReachabilityManager sharedManager];
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                
                NSLog(@"网络状态未知");
                break;
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"没有网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"3G|4G蜂窝移动网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"WIFI网络");
                break;
            default:
                break;
        }
    }];
    _manager = manager;
    [manager startMonitoring];
    
}
@end
