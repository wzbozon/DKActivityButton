//
//  ViewController.m
//  DKActivityButton
//
//  Created by Dennis Kutlubaev on 20.06.17.
//  Copyright © 2017 Alwawee. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end


@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.activityButton removeFromSuperview];
    self.textField.inputAccessoryView = self.activityButton;
    [self.textField becomeFirstResponder];
}


- (void)activityButtonClicked:(id)sender
{
    [self.activityButton setLoading:! self.activityButton.loading];
}


@end
