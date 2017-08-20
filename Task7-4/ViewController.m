//
//  ViewController.m
//  Task7-4
//
//  Created by 🍋 on 16/7/30.
//  Copyright © 2016年 🍋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self animationView:_yellowView];
    [self animationView:_greenView];
    [self animationView:_blueView];
    [self animationView:_redView];
    
}



-(void)animationView:(UIView*)view{
    [UIView beginAnimations:nil context:nil];
    [self animationSwitch:arc4random()%4 withView:view];
    [UIView setAnimationDuration:1];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:100];
    [UIView commitAnimations];
}

-(void)animationSwitch:(int)num withView:(UIView*)view{
    switch (num) {
        case 0:
            [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:view cache:YES];
            break;
        case 1:
            [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view cache:YES];
            break;
        case 2:
            [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:view cache:YES];
            break;
        case 3:
            [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:view cache:YES];
            break;
    }
}


@end
