//
//  NSDictionary+YINilHandling.h
//  YINilHandling
//
//  Created by Inami Yasuhiro on 13/02/28.
//  Copyright (c) 2013年 Yasuhiro Inami. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (YINilHandling)

+ (id)dictionaryByNullifyingNilWithObjects:(const id [])objects forKeys:(const id<NSCopying> [])keys count:(NSUInteger)count;
+ (id)dictionaryByIgnoringNilWithObjects:(const id [])objects forKeys:(const id<NSCopying> [])keys count:(NSUInteger)count;

@end
