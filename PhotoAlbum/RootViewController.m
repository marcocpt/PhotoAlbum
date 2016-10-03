//
//  RootViewController.m
//  PhotoAlbum
//
//  Created by 王国栋 on 16/10/3.
//  Copyright (c) 2016年 wgd. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary *pageViewOptions = @{@(UIPageViewControllerSpineLocationMin) :
                                          UIPageViewControllerOptionSpineLocationKey};
    self.pageViewController = [[UIPageViewController alloc]
                               initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl
                               navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal
                               options:pageViewOptions];
    UIViewController *albumPageViewController =
        [self.storyboard instantiateViewControllerWithIdentifier:@"AlbumPageViewController"];
    [self.pageViewController setViewControllers:@[albumPageViewController]
                                      direction:UIPageViewControllerNavigationDirectionForward
                                       animated:NO
                                     completion:nil];
    [self addChildViewController:self.pageViewController];
    [self.view addSubview:self.pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    self.pageViewController.view.frame = self.view.bounds;
}

/*
- (BOOL) prefersStatusBarHidden
{
    return YES;
}
*/
@end
