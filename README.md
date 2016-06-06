# TraverseNSObject
Traverse an arbitrarily deeply nested Cocoa collection (NSArrays and NSDictionaries)

# Usage
This is a class with a main.m that lets you test it out on the command line or from Xcode. 

To try it out, open the .xcodeproj file in Xcode.app. Product -> Scheme ->Edit Scheme. 

Choose the "Run" tab. 

Under "Arguments passed on Launch", add a path to a file that has a json string in it. Hint: use $HOME/whatever.json instead of ~/whatever.json.

Or, drag the .h and .m into your project and call the class method `+ (void)traverseCollection:(NSObject *)collection applyBlockToLeaves:(ApplyToLeaf)block;`

