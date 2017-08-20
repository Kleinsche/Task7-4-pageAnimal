//
//  ViewController.h
//  Task7-4
//
//  Created by 🍋 on 16/7/30.
//  Copyright © 2016年 🍋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *greenView;
@property (weak, nonatomic) IBOutlet UIView *yellowView;
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIView *redView;

-(void)animationSwitch:(int)num withView:(UIView*)view;
@end

