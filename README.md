YINilHandling
=============

NSArray/NSDictionary categories to nullify/ignore nil value for iOS.


How to use
----------

```
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        static NSUInteger const count = 4;
        
        id objects[count] = { @12345, nil, @"hoge", @"fuga" };
        id keys[count] = { @0, @1, nil, nil };
        
        // NSArray
        NSArray* nullified = [NSArray arrayByNullifyingNilWithObjects:objects count:count];
        NSArray* ignored = [NSArray arrayByIgnoringNilWithObjects:objects count:count];
        
        NSLog(@"nullified array = %@",nullified); // 12345, <null>, hoge, fuga
        NSLog(@"ignored array = %@",ignored);     // 12345, hoge, fuga
        
        // NSDictionary
        NSArray* nullified2 = [NSDictionary dictionaryByNullifyingNilWithObjects:objects forKeys:keys count:count];
        NSArray* ignored2 = [NSDictionary dictionaryByIgnoringNilWithObjects:objects forKeys:keys count:count];
        
        NSLog(@"nullified dictionary = %@",nullified2);    // 0 = 12345, 1 = <null>
        NSLog(@"ignored dictionary = %@",ignored2);        // 0 = 12345
        
    }
    return 0;
}
```

License
-------
YINilHandling is available under the [Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
