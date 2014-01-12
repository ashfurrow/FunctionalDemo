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
    
    [self nonFunctionalMethod];
//    [self functionalMethod];
}








-(void)nonFunctionalMethod {
    /*
     Note: I'm cheating here a bit because there is a non-RXCollections way to gather names using valueForKey:
     But that's a functional way to do it, so ¯\_(ツ)_/¯
     */
    
    
}







-(void)functionalMethod {
    
}








@end
