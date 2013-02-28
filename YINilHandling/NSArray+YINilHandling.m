//
//  NSArray+YINilHandling.m
//  YINilHandling
//
//  Created by Inami Yasuhiro on 13/02/28.
//  Copyright (c) 2013年 Yasuhiro Inami. All rights reserved.
//

#import "NSArray+YINilHandling.h"

@implementation NSArray (YINilHandling)

+ (id)arrayByNullifyingNilWithObjects:(const id [])objects count:(NSUInteger)count
{
    id newObjects[count];
    
    for (NSUInteger i = 0; i < count; i++) {
        if (objects[i]) {
            newObjects[i] = objects[i];
        }
        else {
            newObjects[i] = [NSNull null];
        }
    }
    
    return [self arrayWithObjects:newObjects count:count];
}

+ (id)arrayByIgnoringNilWithObjects:(const id [])objects count:(NSUInteger)count
{
    id newObjects[count];
    
    NSUInteger k = 0;
    for (NSUInteger i = 0; i < count; i++) {
        if (objects[i]) {
            newObjects[k] = objects[i];
            k++;
        }
    }
    
    return [self arrayWithObjects:newObjects count:k];
}

@end
