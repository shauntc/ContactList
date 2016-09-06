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
    
    InputCollector *inputCollector = [[InputCollector alloc] init];
    
    
    NSString *userSelection = [inputCollector inputForPrompt:@"What would you like do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application"];
        
        NSLog(@"%@", userSelection);
    
    
    
    }
    return 0;
}
