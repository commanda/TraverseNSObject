//
//  AWTraverseCollection.m
//  TraverseCollection
//
//  Copyright © 2016 Amanda Wixted. All rights reserved.
//

#import "AWTraverseCollection.h"

@implementation AWTraverseCollection

+ (void)traverseCollection:(NSObject *)collection applyBlockToLeaves:(ApplyToLeaf)block
{
    if ([collection isKindOfClass:[NSDictionary class]])
    {
        for (NSString* value in [(NSDictionary *)collection allValues])
        {
            [self traverseCollection:value applyBlockToLeaves:block];
        }
    }
    else if ([collection isKindOfClass:[NSArray class]])
    {
        for (id child in (NSArray *)collection)
        {
            [self traverseCollection:child applyBlockToLeaves:block];
        }
    }
    else
    {
        // We found a leaf
        if(block)
        {
            block(collection);
        }
    }
}

@end
