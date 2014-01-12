//
//  ASHPerson.m
//  FunctionalDemo
//
//  Created by Ash Furrow on 1/12/2014.
//  Copyright (c) 2014 Ash Furrow. All rights reserved.
//

#import "ASHPerson.h"

@interface ASHPerson ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIColor *favouriteColour;
@property (nonatomic, assign) NSInteger age;

@end

@implementation ASHPerson

-(instancetype)initWithName:(NSString *)name
             favouriteColor:(UIColor *)favouriteColor
                        age:(NSInteger)age {
    self = [super init];
    if (self == nil) return nil;
    
    self.name = [name copy];
    self.favouriteColour = favouriteColor;
    self.age = age;
    
    return self;
}

@end
