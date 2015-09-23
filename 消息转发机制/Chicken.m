//
//  Chicken.m
//  消息转发机制
//
//  Created by Chen on 15/9/23.
//  Copyright © 2015年 Mars Chen. All rights reserved.
//

#import "Chicken.h"
#import "Cat.h"

@implementation Chicken

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return nil;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if ([NSStringFromSelector(aSelector) isEqualToString:@"jump"]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    //改变调用目标
    [anInvocation invokeWithTarget:[[Cat alloc] init]];

    //改换选择子
//    anInvocation.selector = @selector(fly);
//    [anInvocation invokeWithTarget:self];
}

- (void)fly {
    NSLog(@"%@ fly",self);
}

- (void)doesNotRecognizeSelector:(SEL)aSelector {
    NSLog(@"%@",NSStringFromSelector(aSelector));
}

@end
