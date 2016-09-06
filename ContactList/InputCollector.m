//
//  InputCollector.m
//  ContactList
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

+(NSString *)inputForPrompt:(NSString *)promptString
{
    char inputChars[255];
    NSLog(@"%@", promptString);
    fgets(inputChars,255,stdin);
    
    //Converts chars to String and trims the excess whitespace and new lines
    return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

}

@end
