# NSTimer-hzk_Block
NSTimer Category to provide block usage on device before iOS 10.0

Will directly use corresponding system implementation for iOS 10.0+ device

```objective-c
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;
```

```objective-c
+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;
```
