//
//  MainH5ViewController.h
//  testCordova
//
//  Created by xiongwenjie on 2019/4/11.
//  Copyright © 2019年 xiongwenjie. All rights reserved.
//

#import "CDVViewController.h"
#import <Cordova/CDVViewController.h>
#import <Cordova/CDVCommandDelegateImpl.h>
#import <Cordova/CDVCommandQueue.h>
NS_ASSUME_NONNULL_BEGIN
//
@interface MainH5ViewController :CDVViewController

@end

@interface MainCommandDelegate : CDVCommandDelegateImpl
@end

@interface MainCommandQueue : CDVCommandQueue
@end
NS_ASSUME_NONNULL_END
