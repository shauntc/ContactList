//
//  main.m
//  ContactList
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        //InputCollector *inputCollector = [[InputCollector alloc] init];
        BOOL exit = NO;
        ContactList *userList = [[ContactList alloc] init];
        
        [userList addContact:[[Contact alloc] initWithName:@"Bob the Builder" andEmail:@"bob@builders.com"]];
        [userList addContact:[[Contact alloc] initWithName:@"Thomas the Tank Engine" andEmail:@"tom@trains.com"]];
        [userList addContact:[[Contact alloc] initWithName:@"Barney" andEmail:@"barney@purpledinosaurs.com"]];
        [userList addContact:[[Contact alloc] initWithName:@"Rick Sanchez" andEmail:@"rick@portals.com"]];

        
        
        while(!exit)
        {
    
            NSString *userSelection = [InputCollector inputForPrompt:@"What would you like do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application"];
        
            NSLog(@"%@", userSelection);
            
            if([userSelection isEqualToString:@"quit"])
            {
                exit = YES;
                NSLog(@"Have a nice day!");
            }
            else if ([userSelection isEqualToString:@"new"])
            {
                [userList addContact:[[Contact alloc] initWithUserInput]];
            }
            else if([userSelection isEqualToString:@"list"])
            {
                [userList listContacts];
            }
            else if([userSelection hasPrefix:@"show "])
            {
                int i = [[userSelection stringByReplacingOccurrencesOfString:@"show " withString:@""] intValue];
                if((i!=0 || [[userSelection stringByReplacingOccurrencesOfString:@"show " withString:@""]  isEqual: @"0"]) && i < userList.contactList.count)
                {
                    [userList showContactAtIndex:i];
                }
                else
                {
                    NSLog(@"Invalid Index Number");
                }
            }
            else
            {
                NSLog(@"Unrecognized input, please try again:");
            }
    
    
        }
    }
    return 0;
}
