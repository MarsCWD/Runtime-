//
//  Cat.m
//  消息转发机制
//
//  Created by Chen on 15/9/23.
//  Copyright © 2015年 Mars Chen. All rights reserved.
//

#import "Cat.h"
#import <objc/runtime.h>

void jump (id self, SEL cmd);

@implementation Cat

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if ([NSStringFromSelector(sel) isEqualToString:@"jump"]) {
        class_addMethod(self, sel, (IMP)jump, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

void jump (id self , SEL cmd) {
    NSLog(@"%@ jump",self);
}

@end
