//
//  GRDoctor.m
//  _9_DelegatesTest
//
//  Created by Exo-terminal on 3/12/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "GRDoctor.h"


@implementation GRDoctor

#pragma mark - GRPatient

-(void) patientFeelsBad:(GRPatient*)patient{
    NSLog(@"Patient %@ feel bad", patient.name);
    if (patient.temperature>=37.f && patient.temperature<=39.f) {
        [patient takePill];
    }else if (patient.temperature>39.f){
        [patient makeShot];
    }else{
        NSLog(@"Patient %@ should rest", patient.name);
    }
    
}

-(void) patient:(GRPatient*)patient hasQuestion: (NSString*) question{
    NSLog(@"Patient %@ has question: %@", patient.name, question);
}

@end
