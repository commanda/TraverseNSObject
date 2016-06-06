//
//  main.m
//  TraverseCollection
//
//  Copyright © 2016 Amanda Wixted. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AWTraverseCollection.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *filename = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
        NSData *fileData = [NSData dataWithContentsOfFile:filename];
        
        if(!fileData)
        {
            return 1;
        }
        
        NSError *error;
        NSObject *collection = [NSJSONSerialization JSONObjectWithData:fileData options:0 error:&error];
        
        if(error)
        {
            return 1;
        }
        
        [AWTraverseCollection traverseCollection:collection applyBlockToLeaves:^(id leaf){
            NSLog(@"leaf: %@", leaf);
        }];
        
    }
    return 0;
}
