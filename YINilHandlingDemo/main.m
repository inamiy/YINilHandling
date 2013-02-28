//
//  main.m
//  YINilHandlingDemo
//
//  Created by Inami Yasuhiro on 13/02/28.
//  Copyright (c) 2013年 Yasuhiro Inami. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YINilHandling.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        static NSUInteger const count = 4;
        
        id objects[count] = { @12345, nil, @"hoge", @"fuga" };
        id keys[count] = { @0, @1, nil, nil };
        
        // NSArray
        NSArray* nullified = [NSArray arrayByNullifyingNilWithObjects:objects count:count];
        NSArray* ignored = [NSArray arrayByIgnoringNilWithObjects:objects count:count];
        
        NSLog(@"nullified array = %@",nullified);
        NSLog(@"ignored array = %@",ignored);
        
        // NSDictionary
        NSArray* nullified2 = [NSDictionary dictionaryByNullifyingNilWithObjects:objects forKeys:keys count:count];
        NSArray* ignored2 = [NSDictionary dictionaryByIgnoringNilWithObjects:objects forKeys:keys count:count];
        
        NSLog(@"nullified dictionary = %@",nullified2);    // nullifies nil-object & ignores nil-key
        NSLog(@"ignored dictionary = %@",ignored2);        // ignores nil for both in key & object
        
    }
    return 0;
}

