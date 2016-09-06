//
//  ContactList.h
//  ContactList
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *contactList;

-(void)addContact:(Contact *) newContact;
-(void)listContacts;
-(void)showContactAtIndex:(int) index;


@end
