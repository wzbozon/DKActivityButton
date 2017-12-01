//
//  DKViewController.h
//  DKActivityButton
//
//  Created by Dennis Kutlubaev on 12/01/2017.
//  Copyright (c) 2017 Dennis Kutlubaev. All rights reserved.
//

@import UIKit;
#import "DKActivityButton.h"

@interface DKViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *textField;
@property (nonatomic, weak) IBOutlet DKActivityButton *activityButton;

- (IBAction)activityButtonClicked:(id)sender;

@end
