//
//  NSDictionary+YINilHandling.m
//  YINilHandling
//
//  Created by Inami Yasuhiro on 13/02/28.
//  Copyright (c) 2013年 Yasuhiro Inami. All rights reserved.
//

#import "NSDictionary+YINilHandling.h"

@implementation NSDictionary (YINilHandling)

+ (id)dictionaryByNullifyingNilWithObjects:(const id [])objects forKeys:(const id<NSCopying> [])keys count:(NSUInteger)count
{
    id newObjects[count];
    id newKeys[count];
    
    NSUInteger k = 0;
    for (NSUInteger i = 0; i < count; i++) {
        if (!keys[i]) continue;
        
        if (objects[i]) {
            newObjects[k] = objects[i];
        }
        else {
            newObjects[k] = [NSNull null];
        }
        
        newKeys[k] = keys[i];
        
        k++;
    }
    
    return [self dictionaryWithObjects:newObjects forKeys:newKeys count:k];
}

+ (id)dictionaryByIgnoringNilWithObjects:(const id [])objects forKeys:(const id<NSCopying> [])keys count:(NSUInteger)count
{
    id newObjects[count];
    id newKeys[count];
    
    NSUInteger k = 0;
    for (NSUInteger i = 0; i < count; i++) {
        if (objects[i] && keys[i]) {
            newObjects[k] = objects[i];
            newKeys[k] = keys[i];
            k++;
        }
    }
    
    return [self dictionaryWithObjects:newObjects forKeys:newKeys count:k];
}

@end
