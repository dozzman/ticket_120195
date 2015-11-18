//
//  ViewController.h
//  TestObjcVerify
//
//  Created by Dorian Peake on 18/11/2015.
//  Copyright © 2015 Nexmo Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@import VerifyIosSdk;

@interface ViewController : UIViewController <VerifyUIDelegate>

    @property (nonatomic) BOOL verificationSuccessful;
    
    -(void)userVerified:(BOOL)verified;

@end

