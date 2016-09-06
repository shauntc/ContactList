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
    
        //initialization
        InputCollector *inputCollector = [[InputCollector alloc] init];
        BOOL exit = NO;
        ContactList *userList = [[ContactList alloc] init];
        
        //Adding some contacts
        [userList addContact:[[Contact alloc] initWithName:@"Bob the Builder" andEmail:@"bob@builders.com"]];
        [userList addContact:[[Contact alloc] initWithName:@"Thomas the Tank Engine" andEmail:@"tom@trains.com"]];
        [userList addContact:[[Contact alloc] initWithName:@"Barney" andEmail:@"barney@purpledinosaurs.com"]];
        [userList addContact:[[Contact alloc] initWithName:@"Rick Sanchez" andEmail:@"rick@portals.com"]];

        
        //Menu loop
        while(!exit)
        {
            
    
            NSString *userSelection = [inputCollector inputWithHistoryForPrompt:@"What would you like do next?\nnew - Create a new contact\nlist - List all contacts\nshow # - Show Contact at index number #\nhistory - Show last 3 commands input\nquit - Exit Application"];
        
            NSLog(@"User input: %@", userSelection);
            
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
            else if([userSelection hasPrefix:@"show"])
            {
                if([userSelection isEqualToString:@"show"])
                {
                    userSelection = [InputCollector inputForPrompt:@"What index number would you like to show?"];
                }
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
            else if([userSelection hasPrefix:@"find"])
            {
                if([userSelection isEqualToString:@"find"])
                {
                    userSelection = [InputCollector inputForPrompt:@"What would you like to search for?"];
                }
                userSelection = [[userSelection stringByReplacingOccurrencesOfString:@"find" withString:@""] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
                [userList findContact:userSelection];
            }
            else if([userSelection isEqualToString:@"history"])
            {
                [inputCollector history];
            }
            else
            {
                NSLog(@"Unrecognized command, please try again:");
            }
    
    
        }
    }
    return 0;
}
