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
    
    loggerBlock = ^{
        NSLog(@"Im just glad they didnt call it a lambda");
    };
    
    //Execute the block just calling a function
    loggerBlock();
}

- (IBAction)btn02:(id)sender {
    
    
}

- (IBAction)btn03:(id)sender {
    
    
}

- (IBAction)btn04:(id)sender {
    
    
}

- (IBAction)btn05:(id)sender {
    
    
}


@end
