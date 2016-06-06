//
//  AWTraverseCollection.h
//  TraverseCollection
//
//  Copyright © 2016 Amanda Wixted. All rights reserved.
//

#import <Foundation/Foundation.h>

// @param leaf The leaf object
// @param key The key in this leaf's parent dictionary, if the parent is a dictionary. If its parent is an array, this will be its index as an NSNumber.
// @param parent The leaf's parent, for context
typedef void (^ApplyToLeaf)(id leaf, id key, NSObject *parent);

@interface AWTraverseCollection : NSObject

+(void)traverseCollection:(NSObject *)collection applyBlockToLeaves:(ApplyToLeaf)block;

@end
