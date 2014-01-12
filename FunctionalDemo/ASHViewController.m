//
//  ASHViewController.m
//  FunctionalDemo
//
//  Created by Ash Furrow on 1/12/2014.
//  Copyright (c) 2014 Ash Furrow. All rights reserved.
//

#import "ASHViewController.h"
#import "ASHPerson.h"
#import <RXCollections/RXCollection.h>

@interface ASHViewController ()

@property (nonatomic, strong) NSArray *personsArray;

@end

@implementation ASHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.personsArray = @[[[ASHPerson alloc] initWithName:@"Alice" favouriteColor:[UIColor redColor] age:25],
                          [[ASHPerson alloc] initWithName:@"Bob" favouriteColor:[UIColor blueColor] age:40],
                          [[ASHPerson alloc] initWithName:@"Carol" favouriteColor:[UIColor purpleColor] age:18]];
    
    // Log the names as an array, log the max age, and set the background colour to that person's favourite colour.
    [self nonFunctionalMethod];
//    [self functionalMethod];
}













-(void)nonFunctionalMethod {
    // First create the names array to log
    NSMutableArray *namesMutableArray = [NSMutableArray arrayWithCapacity:self.personsArray.count];
    
    for (ASHPerson *person in self.personsArray) {
        [namesMutableArray addObject:person.name];
    }
    
    NSArray *namesArray = [NSArray arrayWithArray:namesMutableArray];
    NSLog(@"%@", namesArray);
    
    
    // Next find the maximum age and that person's favourite colour
    NSInteger maximumAgeSoFar = NSIntegerMin;
    UIColor *favouriteColourOfMaximumAgeSoFar;
    
    for (ASHPerson *person in self.personsArray) {
        if (person.age > maximumAgeSoFar) {
            maximumAgeSoFar = person.age;
            favouriteColourOfMaximumAgeSoFar = person.favouriteColour;
        }
    }
    
    NSLog(@"Maximum age is %d", maximumAgeSoFar);
    self.view.backgroundColor = favouriteColourOfMaximumAgeSoFar;
}












-(void)functionalMethod {
    NSArray *namesArray = [self.personsArray rx_mapWithBlock:^id(ASHPerson *each) {
        return each.name;
    }];
    
    NSLog(@"%@", namesArray);
    
    ASHPerson *oldestPerson = [self.personsArray rx_foldWithBlock:^id(ASHPerson *memo, ASHPerson *each) {
        if (memo) {
            return memo.age > each.age ? memo : each;
        } else {
            return each;
        }
    }];
    
    NSLog(@"Maximum age is %d", oldestPerson.age);
    self.view.backgroundColor = oldestPerson.favouriteColour;
}













@end
