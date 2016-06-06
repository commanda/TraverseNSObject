//
//  AWTraverseCollection.h
//  TraverseCollection
//
//  Created by Amanda Wixted on 6/6/16.
//  Copyright © 2016 Amanda Wixted. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ApplyToLeaf)(id leaf);

@interface AWTraverseCollection : NSObject

+(void)traverseCollection:(NSObject *)collection applyBlockToLeaves:(ApplyToLeaf)block;

@end
