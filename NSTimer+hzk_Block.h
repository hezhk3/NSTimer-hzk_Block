//
//  NSTimer+hzk_Block.h
//  NSTimer+hzk_Block
//
//  Created by Hezhk3 on 2018/4/27.
//  Copyright © 2018年 Hezhk3. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (hzk_Block)

+ (NSTimer *)hzk_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;

+ (NSTimer *)hzk_timerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;

@end

NS_ASSUME_NONNULL_END
