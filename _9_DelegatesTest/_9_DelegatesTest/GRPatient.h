//
//  GRPatient.h
//  _9_DelegatesTest
//
//  Created by Exo-terminal on 3/12/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol GRPatientDelegate;


@interface GRPatient : NSObject
@property(strong, nonatomic) NSString* name;
@property(assign, nonatomic) CGFloat temperature;
@property(weak, nonatomic)id <GRPatientDelegate> delegate;

-(BOOL) howAreYou;
-(void) takePill;
-(void) makeShot;

@end


@protocol GRPatientDelegate <NSObject>

-(void) patientFeelsBad:(GRPatient*)patient;
-(void) patient:(GRPatient*)patient hasQuestion: (NSString*) question;

@end