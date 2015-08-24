//
//  main.m
//  000TestBlocks_iOS_ObjC
//
//  Created by Henry Ambicho Trujillo on 8/24/15.
//  Copyright (c) 2015 MELI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
//        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
        // Create the array of strings to devowelize and a container for new ones
        NSArray *oldStrings = [NSArray arrayWithObjects:@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
        NSLog(@"old strings: %@", oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
        // Create a list of characters that we'll remove from the string
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
        
        // Declare de block variable:
        void (^devowelizer)(id, NSUInteger, BOOL *);
        
        // Assign a block to the variable:
        devowelizer = ^(id string, NSUInteger i, BOOL *stop){
            
            // ---- This is for consider only a one iteration
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            // Did I find a y?
            if (yRange.location != NSNotFound) {
                *stop = YES;    // Prevent further iterations
                return;         // Stop this iteration
            }
            // - - - - 
            
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            // Iterate over the array of vowel, replacing occurrences of each
            // with an smpty string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [newStrings addObject:newString];
        }; // End of block assignment
        
        // Iterate over the array with our block
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new string: %@", newStrings);
        
    }
    return 0;
}
