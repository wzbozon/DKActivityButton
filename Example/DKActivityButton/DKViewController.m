//
//  DKViewController.m
//  DKActivityButton
//
//  Created by Dennis Kutlubaev on 12/01/2017.
//  Copyright (c) 2017 Dennis Kutlubaev. All rights reserved.
//

#import "DKViewController.h"

@interface DKViewController ()

@end

@implementation DKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.activityButton removeFromSuperview];
    self.textField.inputAccessoryView = self.activityButton;
    [self.textField becomeFirstResponder];
}

- (void)activityButtonClicked:(id)sender
{
    self.textField.text = @"Loading ... Tap again to stop.";
    [self.activityButton setLoading:! self.activityButton.loading];
}

@end
