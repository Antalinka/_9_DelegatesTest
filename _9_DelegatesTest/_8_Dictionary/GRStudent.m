//
//  GRStudent.m
//  _8_Dictionary
//
//  Created by Exo-terminal on 3/12/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "GRStudent.h"

@implementation GRStudent

- (NSString *)description
{
    
    NSString* str = [NSString stringWithFormat:@"My name:%@, My last name: %@ and I say '%@'", self.name, self.lastName, self.greeting];
    return str;

}

@end
