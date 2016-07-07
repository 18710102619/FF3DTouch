//
//  FFHomeViewController.m
//  FF3DTouch
//
//  Created by 张玲玉 on 16/7/7.
//  Copyright © 2016年 张玲玉. All rights reserved.
//

#import "FFHomeViewController.h"
#import "FFPopViewController.h"

@interface FFHomeViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation FFHomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self registerForPreviewing];
}

- (void)registerForPreviewing
{
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        [self registerForPreviewingWithDelegate:self sourceView:self.view];
        NSLog(@"3D Touch  可用!");
    }
    else {
        NSLog(@"3D Touch 无效");
    }
}

#pragma mark -UIViewControllerPreviewingDelegate

/**
 *  传入预览的VC
 */
- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint) point
{
    FFPopViewController *pop = [[FFPopViewController alloc] init];
    pop.view.backgroundColor = [UIColor redColor];
    pop.preferredContentSize = CGSizeMake(200,200);
    
    CGRect rect = CGRectMake(10, point.y - 10, self.view.frame.size.width - 20, 20);
    context.sourceRect = rect;
    return pop;
}

/**
 *  再次按压，进入全屏状态
 */
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    [self showViewController:viewControllerToCommit sender:self];
}

@end
