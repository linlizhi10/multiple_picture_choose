//
//  SKCheckButton.m
//  multiple_picture_choose
//
//  Created by skunk  on 15/4/30.
//  Copyright (c) 2015年 linlizhi. All rights reserved.
//

#import "SKCheckButton.h"

#define SETImageRendering(imageName) [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]

@implementation SKCheckButton
+ (instancetype)shareCheckButton
{
    SKCheckButton *SKButton = [SKCheckButton buttonWithType:UIButtonTypeCustom];
    SKButton.tintColor = [UIColor whiteColor];
    SKButton.isChecked = NO;
    
    CGFloat radius = SKButton.frame.size.width;
    SKButton.layer.cornerRadius = radius;
    
    [SKButton setImage:SETImageRendering(@"Check") forState:UIControlStateNormal];
    
    return SKButton;
}
- (void)setFrame:(CGRect)frame
{
    super.frame = frame;
    CGFloat radius = self.frame.size.width / 2;
    self.layer.cornerRadius = radius;
    
}
- (void)setIsChecked:(BOOL)isChecked
{
    _isChecked = isChecked;
    
    if (_isChecked) {
        [self buttonSelected];
        
    }else{
        [self buttonUNSelected];
    }
}

- (void)buttonSelected
{
    //self.tintColor = [UIColor greenColor];
    self.backgroundColor = [UIColor greenColor];
    self.layer.borderColor = [UIColor clearColor].CGColor;
    [self performAnimation];
}
- (void)buttonUNSelected
{
    self.backgroundColor = [UIColor clearColor];
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.borderWidth = 0.5;

}
- (void)performAnimation{
    
[UIView animateKeyframesWithDuration:0.3 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
    [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.5 animations:^{
        self.transform = CGAffineTransformMakeScale(1.1, 1.1);
        
    }];
    [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:0.5 animations:^{
        self.transform = CGAffineTransformIdentity;
    }];
} completion:^(BOOL finished) {
    
}];

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
