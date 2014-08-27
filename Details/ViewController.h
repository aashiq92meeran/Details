//
//  ViewController.h
//  Details
//
//  Created by Mubashir Meddekar on 8/25/14.
//  Copyright (c) 2014 Hibrise Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Details.h"



@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *GUserName;
@property (weak, nonatomic) IBOutlet UITextField *GPassword;

@property (strong, nonatomic) IBOutlet UIView *ViewReg;

@property (weak, nonatomic) IBOutlet UITextField *RUsername;
@property (weak, nonatomic) IBOutlet UITextField *RPassword;

- (IBAction)SignUp:(id)sender;

- (IBAction)Login:(id)sender;

- (IBAction)Register:(id)sender;

@end
