//
//  main.m
//  HelloWorld
//
//  Created by hoangminh on 9/6/14.
//  Copyright (c) 2014 Minh Vu Hoang Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"What is your name? ");
        char cstring[40];
        scanf("%s", cstring);
        
        NSString *firstName = [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];
        // Write to stdout
        fprintf(stdout, "%s\n", [firstName UTF8String]);
        // Display current date and time
        NSDate *currentDate = [NSDate date];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"HH:MM:SS"];
        NSString *timeString = [formatter stringFromDate:currentDate];
        NSLog(@"%@", timeString);
        }
    return 0;
}

