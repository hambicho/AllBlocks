//
//  ViewController.m
//  000TestBlocks_iOS_ObjC
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
    
    
    
    ^{
        NSLog(@"I'am a log statement within a block!");
    };
    
    
    ^(double dividend, double divisor){
        double quotient = dividend / divisor;
        return quotient;
    
    };
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
