//
//  GRPatient.m
//  _9_DelegatesTest
//
//  Created by Exo-terminal on 3/12/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "GRPatient.h"


@implementation GRPatient

-(BOOL) howAreYou{
    BOOL iFeelsGood = arc4random()%2;
//    if (!iFeelsGood) {
//        [self.delegate patientFeelsBad: self];
//    }
//    
    return iFeelsGood;
}
-(void) takePill{
    NSLog(@"%@ take a pill", self.name);
    
}
-(void) makeShot{
    NSLog(@"%@ make a shot", self.name);

}
@end
