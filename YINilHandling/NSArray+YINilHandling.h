//
//  NSArray+YINilHandling.h
//  YINilHandling
//
//  Created by Inami Yasuhiro on 13/02/28.
//  Copyright (c) 2013年 Yasuhiro Inami. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (YINilHandling)

+ (id)arrayByNullifyingNilWithObjects:(const id [])objects count:(NSUInteger)count;
+ (id)arrayByIgnoringNilWithObjects:(const id [])objects count:(NSUInteger)count;

@end
