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
    NSArray *colors = [NSArray arrayWithObjects:@"Red",@"Green",@"Blue", nil];
    // Enumerating usign block
    [colors enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@ at %lu", obj, idx);
        if (idx == 1) {
            NSLog(@"Found index 1, stopping");
            *stop = YES;
        }
    } // End of Block
     ];
    //  - - - - - -  -
    for (id obj in colors) {
        NSUInteger idx = [colors indexOfObject:obj];
        NSLog(@"%@ at %lu", obj, idx);
        
        if (idx == 1) {
            NSLog(@"Found index 1, stopping");
            break;
        }
    }
    
}

- (IBAction)btn05:(id)sender {
    // You can also use them to filter objects based on the code in the block:
    NSMutableArray* streets = [NSMutableArray array];
    [streets addObject:@"De Anza Blvd"];
    [streets addObject:@"Homestead Rd"];
    [streets addObject:@"Sunnyvale Saratoga Rd"];
    [streets addObject:@"Fremont Ave"];
    [streets addObject:@"Stelling Rd"];
    NSLog( @"All streets: %@", streets );
    NSIndexSet* roadsIndexes;
    roadsIndexes = [streets indexesOfObjectsPassingTest:
                    ^( id obj, NSUInteger idx, BOOL *stop ) {
                        return [obj hasSuffix:@"Rd"];
                    }];
    NSLog( @"roadIndexes: %lu", roadsIndexes.count );
    NSArray* roads = [streets objectsAtIndexes:roadsIndexes];
    NSLog( @"roads: %@", roads );
    
}

- (IBAction)btn06:(id)sender {
    
//    NSDictionary supports both fast enumeration and block enumeration:
    NSString* const CBCityKey = @"city";
    NSString* const CBStateKey = @"state";
    NSString* const CBZipcodeKey = @"zipcode";
    NSDictionary* info;
    info = [NSDictionary dictionaryWithObjectsAndKeys:
            @"Sunnyvale", CBCityKey,
            @"California", CBStateKey,
            @"94086", CBZipcodeKey,
            nil];
    
    for ( id key in info ) {
        NSLog( @"%@: %@", key, [info objectForKey:key] );
    }
    
    [info enumerateKeysAndObjectsUsingBlock:
     ^( id key, id obj, BOOL *stop ) {
         NSLog( @"%@: %@", key, obj );
     }
     ];
    
}


- (IBAction)btn07:(id)sender {
    //    NSSet

        // manually created set.
    NSSet* days;
    days = [NSSet setWithObjects: @"Friday", @"Saturday",nil];
    days = [days setByAddingObject:@"Sunday"];
    NSLog( @"days: %@", days );
    // set from array.
    NSMutableArray* planets = [NSMutableArray array];
    [planets addObject:@"Earth"];
    [planets addObject:@"Mercury"];
    [planets addObject:@"Mars"];
    [planets addObject:@"Jupiter"];
    [planets addObject:@"Jupiter"];
    [planets addObject:@"Jupiter"];
    NSSet* planetsSet = [NSSet setWithArray:planets];
    NSLog( @"planetsSet: %@", planetsSet );
    // add an object.
    NSSet* morePlanets = [planetsSet setByAddingObject:@"Venus"];
    if ([planetsSet isSubsetOfSet:morePlanets])
        NSLog( @"morePlanets is a superset of planetsSet" );
    // loop through with fast enumeration.
    for ( id planet in planetsSet ) {
        if ([planet isEqual:@"Earth"]) {
            NSLog ( @"Found home!" );
        }
    }
    // filter objects with a block.
    NSSet* mPlanets = [morePlanets objectsPassingTest:
                       ^(id obj, BOOL *stop) {
                           return [obj hasPrefix:@"M"];
                       }];
    
    NSLog( @"mPlanets: %@", mPlanets );
    
}

- (IBAction)btn08:(id)sender {
    NSLog( @" - - -  Boton 8 - - - - ");    
    independentBlockObject();
}

- (IBAction)btn069:(id)sender {
    
    
    
    
}

- (IBAction)btn10:(id)sender {
    
    
    
    
}




void (^independentBlockObject)(void) = ^(void){

    NSInteger localInteger = 10;
    NSLog(@"local integer = %ld", (long)localInteger);

    localInteger = 20;
    NSLog(@"local integer = %ld", (long)localInteger);
};





























@end
