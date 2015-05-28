//
//  SKCheckButton.h
//  multiple_picture_choose
//
//  Created by skunk  on 15/4/30.
//  Copyright (c) 2015年 linlizhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKCheckButton : UIButton

@property (nonatomic, assign) BOOL isChecked;

+ (instancetype)shareCheckButton;
@end
