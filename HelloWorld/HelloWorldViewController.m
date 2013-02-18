//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by @juanpintoduran on 17-02-13.
//  Copyright (c) 2013 CABARGASdotCOM. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController

@synthesize textField=_textField;
@synthesize label=_label;
@synthesize userName=_userName;


- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"Mundo";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hola, %@!", nameString];
    self.label.text = greeting;
}
@end