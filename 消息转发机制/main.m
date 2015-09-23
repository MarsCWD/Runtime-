//
//  main.m
//  消息转发机制
//
//  Created by Chen on 15/9/23.
//  Copyright © 2015年 Mars Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"
#import "Chicken.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Cat *cat = [[Cat alloc] init];
        [cat jump];

        Dog *dog = [[Dog alloc] init];
        [dog jump];

        Chicken *chicken = [[Chicken alloc] init];
        [chicken jump];

    }
    return 0;
}
