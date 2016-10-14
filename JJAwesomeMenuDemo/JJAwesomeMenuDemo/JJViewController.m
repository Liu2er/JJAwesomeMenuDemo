//
//  JJViewController.m
//  JJAwesomeMenuDemo
//
//  Created by 刘佳杰 on 16/10/14.
//  Copyright © 2016年 刘佳杰. All rights reserved.
//

#import "JJViewController.h"
#import "AwesomeMenu.h"
#import "AwesomeMenuItem.h"
#import "UIImage+TFSize.h"

@interface JJViewController () <AwesomeMenuItemDelegate, AwesomeMenuDelegate>

@end

@implementation JJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.navigationItem.title = @"导航栏";
    
    UIImage *subscribeButtonImage = [[UIImage imageNamed:@"SubscribeButton"] scaledToSize:CGSizeMake(40, 40)];
    UIImage *commentsButtonImage = [[UIImage imageNamed:@"CommentsButton"] scaledToSize:CGSizeMake(40, 40)];
    UIImage *feedbackButtonImage = [[UIImage imageNamed:@"FeedbackButton"] scaledToSize:CGSizeMake(40, 40)];
    
    
    AwesomeMenuItem *subscribeMenuItem = [[AwesomeMenuItem alloc] initWithImage:subscribeButtonImage
                                                               highlightedImage:subscribeButtonImage
                                                                   ContentImage:subscribeButtonImage
                                                        highlightedContentImage:nil];
    
    AwesomeMenuItem *commentsMenuItem = [[AwesomeMenuItem alloc] initWithImage:commentsButtonImage
                                                              highlightedImage:commentsButtonImage
                                                                  ContentImage:commentsButtonImage
                                                       highlightedContentImage:nil];
    
    AwesomeMenuItem *feedbackMenuItem = [[AwesomeMenuItem alloc] initWithImage:feedbackButtonImage
                                                              highlightedImage:feedbackButtonImage
                                                                  ContentImage:feedbackButtonImage
                                                       highlightedContentImage:nil];
    
    AwesomeMenu *menu = [[AwesomeMenu alloc] initWithFrame:self.view.bounds menus:[NSArray arrayWithObjects:subscribeMenuItem, commentsMenuItem, feedbackMenuItem, nil]];
    menu.delegate = self;
    
    menu.startPoint = CGPointMake(self.view.frame.size.width - 50, 50);
    menu.rotateAngle = M_PI * 13 / 12;
    menu.menuWholeAngle = M_PI_2;
    menu.timeOffset = 0.036f;
    menu.farRadius = 140.0f;
    menu.nearRadius = 110.0f;
    menu.endRadius = 120.0f;
    
    [self.view addSubview:menu];
}

#pragma mark - Delegate

- (void)AwesomeMenu:(AwesomeMenu *)menu didSelectIndex:(NSInteger)idx {
    NSLog(@"Select the index : %ld",(long)idx);
}

- (void)AwesomeMenuItemTouchesBegan:(AwesomeMenuItem *)item {
    NSLog(@"Menu was closed!");
}
- (void)AwesomeMenuItemTouchesEnd:(AwesomeMenuItem *)item {
    NSLog(@"Menu is open!");
}

@end
