//
//  Contact.h
//  ContactList
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

@interface Contact : NSObject
@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *email;

-(NSString *)description;

-(instancetype)initWithName:(NSString *)name andEmail:(NSString *)email;
-(instancetype)initWithName:(NSString *)name;
-(instancetype)initWithUserInput;



@end
