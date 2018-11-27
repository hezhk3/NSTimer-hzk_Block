//
//  NSTimer+hzk_Block.m
//  NSTimer+hzk_Block
//
//  Created by Hezhk3 on 2018/4/27.
//  Copyright © 2018年 Hezhk3. All rights reserved.
//

#import "NSTimer+hzk_Block.h"

@implementation NSTimer (hzk_Block)

+ (NSTimer *)hzk_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block {
    if (@available(iOS 10.0, *)) {
        return [self scheduledTimerWithTimeInterval:interval repeats:repeats block:block];
    } else {
        void (^myBlock)(NSTimer* timer) = [block copy];
        return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(hzk_execMyBlock:) userInfo:myBlock repeats:repeats];
    }
}

+ (NSTimer *)hzk_timerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block {
    if (@available(iOS 10.0, *)) {
        return [self timerWithTimeInterval:interval repeats:repeats block:block];
    } else {
        void (^myBlock)(NSTimer* timer) = [block copy];
        return [self timerWithTimeInterval:interval target:self selector:@selector(hzk_execMyBlock:) userInfo:myBlock repeats:repeats];
    }
}

+ (void)hzk_execMyBlock:(NSTimer *)timer {
    if (timer.userInfo) {
        void(^myBlock)(NSTimer *timer) = (void(^)(NSTimer *timer))timer.userInfo;
        myBlock(timer);
    }
}

@end
