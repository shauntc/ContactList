//
//  Contact.m
//  ContactList
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "Contact.h"

@implementation Contact

-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@> (%@)", self.name, self.email];
}

-(instancetype)initWithName:(NSString *)name andEmail:(NSString *)email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}
-(instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
- (instancetype)initWithUserInput
{
    self = [super init];
    if (self) {
        _name = [InputCollector inputForPrompt:@"Contact Name:"];
        _email = [InputCollector inputForPrompt:@"Contact Email:"];
    }
    return self;
}


@end
