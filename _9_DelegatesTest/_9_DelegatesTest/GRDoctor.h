//
//  GRDoctor.h
//  _9_DelegatesTest
//
//  Created by Exo-terminal on 3/12/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GRPatient.h"

//@protocol GRPatientDelegate;

@interface GRDoctor : NSObject <GRPatientDelegate>

@end
