//
//  ViewController.m
//  Details
//
//  Created by Mubashir Meddekar on 8/25/14.
//  Copyright (c) 2014 Hibrise Technologies. All rights reserved.
//

#import "ViewController.h"
@interface ViewController () <UITextFieldDelegate>

{
    Details *obj;
    NSMutableArray * Objectarray;

}
@end

//@class RegisterVIew;

@implementation ViewController

@synthesize GUserName,GPassword,RUsername,RPassword,ViewReg;



- (void)viewDidLoad
{
   RUsername.delegate = self;
   RPassword.delegate= self;
    
    if (!Objectarray)
    {
        Objectarray=[[NSMutableArray alloc]init];
    }
          ViewReg.hidden = YES;
    
  

    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)SignUp:(id)sender


{
     ViewReg.hidden = NO;
}


- (IBAction)Login:(id)sender

    {
        for (Details *newobj in Objectarray)
        {
            if ([newobj.uid isEqualToString: self.GUserName.text] && [newobj.pwd isEqualToString:self.GPassword.text ])
            {
                UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:GUserName.text message:@"Login Successful" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
            
               
                [alert show];
                break;
            }
            else
            {
                UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:GUserName.text message:@"Not successful" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
            [alert show];

                
            }
        }
        
    }
- (IBAction)Register:(id)sender

{
    {
      obj= [[Details alloc]init];
        
       NSString * emailRegEx = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
       
       NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegEx];
        NSString * genx= @"[A-Z0-9a-z]";

       NSPredicate *emailTest2 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",genx];
        
        //Valid email address
        
        if ([emailTest evaluateWithObject:RUsername.text] == YES  || [emailTest2 evaluateWithObject:RPassword.text]==YES)
        {
            obj.uid = RUsername.text;
            obj.pwd = RPassword.text;
            
           [Objectarray addObject:obj];
           
            ViewReg.hidden = YES;
            self.RUsername.text = @"";
            self.RPassword.text = @"";
            
        }
        
        
        else
        {
            UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"" message:@"Try again" delegate:self cancelButtonTitle:@"Retry"otherButtonTitles: nil];
            [alert show];
        }
            }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}
-(void) Validation
{
    
    
}


    
@end
