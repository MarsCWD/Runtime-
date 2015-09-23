//
//  Dog.m
//  消息转发机制
//
//  Created by Chen on 15/9/23.
//  Copyright © 2015年 Mars Chen. All rights reserved.
//

#import "Dog.h"
#import "Cat.h"

@implementation Dog

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([NSStringFromSelector(aSelector) isEqualToString:@"jump"]) {
        return [[Cat alloc] init];
    }
    return [super forwardingTargetForSelector:aSelector];
}

@end
