//
//  DKActivityButton.m
//  DKActivityButton
//
//  Created by Dennis Kutlubaev on 20.06.17.
//  Copyright © 2017 Alwawee. All rights reserved.
//

#import "DKActivityButton.h"


@interface DKActivityButton() <CAAnimationDelegate>

@property (nonatomic, strong) NSString *savedTitle;
@property (nonatomic, strong) UIImageView *activityIndicator;

@end


@implementation DKActivityButton


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {

        [self commonInit];
        
    }
    
    return self;
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
    
        [self commonInit];
        
    }
    
    return self;
}


- (void)setupActivityIndicator
{
    self.activityIndicator = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [self.activityIndicator setImage:[UIImage imageNamed:@"circle"]];
    self.activityIndicator.hidden = YES;
    [self addSubview:self.activityIndicator];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(activityIndicatorTaped:)];
    [self.activityIndicator addGestureRecognizer:tap];
}


- (void)activityIndicatorTaped:(id)sender
{
    [self sendActionsForControlEvents:(UIControlEventTouchUpInside)];
}


- (void)commonInit
{
    self.savedTitle = self.titleLabel.text;
    [self setupActivityIndicator];
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.activityIndicator.center = CGPointMake(self.bounds.size.width / 2.0, self.bounds.size.height / 2.0);
    [self bringSubviewToFront:self.activityIndicator];
}


- (void)setLoading:(BOOL)loading
{
    _loading = loading;
    
    if ( self.loading ) {
        [self setTitle:nil forState:UIControlStateNormal];
        self.activityIndicator.hidden = NO;
        [self spin];
    }
    else {
        [self setTitle:self.savedTitle forState:UIControlStateNormal];
        self.activityIndicator.hidden = YES;
        [self.activityIndicator.layer removeAllAnimations];
    }
}


- (void)spin
{
    CABasicAnimation *spinAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    spinAnimation.byValue = [NSNumber numberWithFloat:2*M_PI];
    spinAnimation.duration = 1;
    spinAnimation.delegate = self;
    [self.activityIndicator.layer addAnimation:spinAnimation forKey:@"spinAnimation"];
}


#pragma mark - Animation Delegates

- (void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag
{
    if ( self.loading ) {
        [self spin];
    }
}


@end
