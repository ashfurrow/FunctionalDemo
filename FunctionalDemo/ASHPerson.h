//
//  ASHPerson.h
//  FunctionalDemo
//
//  Created by Ash Furrow on 1/12/2014.
//  Copyright (c) 2014 Ash Furrow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASHPerson : NSObject

-(instancetype)initWithName:(NSString *)name
             favouriteColor:(UIColor *)favouriteColor
                        age:(NSInteger)age;

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) UIColor *favouriteColour;
@property (nonatomic, readonly) NSInteger age;

@end
