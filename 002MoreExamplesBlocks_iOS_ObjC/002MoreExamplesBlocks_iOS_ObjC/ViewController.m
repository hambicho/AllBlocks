//
//  ViewController.m
//  002MoreExamplesBlocks_iOS_ObjC
//
//  Created by Henry Ambicho Trujillo on 8/24/15.
//  Copyright (c) 2015 MELI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btn01:(id)sender {
    
    //Declare a block variable "loggerBlock" with no parameters and no return value.
    void (^loggerBlock)(void);

    // Assign a block to the variable declared above. A block without parameters
    // and with no return value, like this one, needs no "decorations" like the use
    // of void in the preceding variable declaration.
    loggerBlock = ^{
        NSLog(@"Im just glad they didnt call it a lambda");
    };
    
    //Execute the block just calling a function
    loggerBlock();
}

- (IBAction)btn02:(id)sender {
    // define a variable that can be changed by a block
    __block int a = 0;
    
// define a block that tries to modify a variable in its scope
    void (^sillyBlock)(void) = ^{  a = 47; };
    
// check the value of our variable before calling the block
    NSLog(@" a == %d",a);  // outputs "a == 0"
    
// execute the block
    sillyBlock();
// check the values of our variable again, after calling the block
    NSLog(@" a == %d",a);  // outputs "a == 47"
    
    
    
    
}

- (IBAction)btn03:(id)sender {
    NSArray *color = [NSArray arrayWithObjects:@"Red",@"Green",@"Blue", nil];
    // Enumerating usign block
    [color enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@ at %lu", obj, idx);
        if (idx == 1) {
            NSLog(@"Found index 1, stopping");
            *stop = YES;
        }
    } // End of Block
     ];
    
}

- (IBAction)btn04:(id)sender {
    
    
}

- (IBAction)btn05:(id)sender {
    
    
}



















@end
