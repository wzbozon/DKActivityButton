//
//  ViewController.h
//  DKActivityButton
//
//  Created by Dennis Kutlubaev on 20.06.17.
//  Copyright © 2017 Alwawee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DKActivityButton.h"

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *textField;
@property (nonatomic, weak) IBOutlet DKActivityButton *activityButton;

- (IBAction)activityButtonClicked:(id)sender;

@end

