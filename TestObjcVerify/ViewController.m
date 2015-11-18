//
//  ViewController.m
//  TestObjcVerify
//
//  Created by Dorian Peake on 18/11/2015.
//  Copyright © 2015 Nexmo Inc. All rights reserved.
//

#import "ViewController.h"

@import VerifyIosSdk;

@interface ViewController ()

- (IBAction)beginVerification:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)beginVerification:(id)sender {
    [VerifyClient beginManagedVerificationWithMessage:@"Test verification app for Lawrence" withDelegate:self];
}

-(void)userVerified:(BOOL)verified {
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:nil];
    NSString *message;
    
    if (verified) {
        message = @"Verification successful...";
    } else {
        message = @"Verification failed!";
    }
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Verification..." message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [controller addAction:action];
    [self presentViewController:controller animated:YES completion:nil];
}
@end
