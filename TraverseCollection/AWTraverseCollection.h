//
//  AWTraverseCollection.h
//  TraverseCollection
//
//  Copyright © 2016 Amanda Wixted. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ApplyToLeaf)(id leaf);

@interface AWTraverseCollection : NSObject

+(void)traverseCollection:(NSObject *)collection applyBlockToLeaves:(ApplyToLeaf)block;

@end
