//
//  ContactList.m
//  ContactList
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *) newContact
{
    [self.contactList addObject:newContact];
}

-(void)listContacts
{
    NSLog(@"Index # <Contact Name> (Email)");
    for(int i = 0; i<self.contactList.count; i++)
    {
        NSLog(@"      %d:%@", i, self.contactList[i]);
    }
    NSLog(@"End of Contacts");
}

-(void)showContactAtIndex:(int) index
{
    NSLog(@"%@", self.contactList[index]);
}




@end
