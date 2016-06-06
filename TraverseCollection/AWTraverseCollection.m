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
    [self traverseCollection:collection applyBlockToLeaves:block currentKey:nil currentParent:nil];
}

+ (void)traverseCollection:(NSObject *)collection applyBlockToLeaves:(ApplyToLeaf)block currentKey:(id)key currentParent:(NSObject *)parent
{
    if ([collection isKindOfClass:[NSDictionary class]])
    {
        NSDictionary *dictionary = (NSDictionary *)collection;
        for (NSString *key in [dictionary allKeys])
        {
            NSObject *value = dictionary[key];
            [self traverseCollection:value applyBlockToLeaves:block currentKey:key currentParent:dictionary];
        }
    }
    else if ([collection isKindOfClass:[NSArray class]])
    {
        NSArray *array = (NSArray *)collection;
        for (int index = 0; index < array.count; index++)
        {
            NSObject *item = array[index];
            [self traverseCollection:item applyBlockToLeaves:block currentKey:@(index) currentParent:array];
        }
    }
    else
    {
        // We found a leaf
        if(block)
        {
            block(collection, key, parent);
        }
    }
}

@end
