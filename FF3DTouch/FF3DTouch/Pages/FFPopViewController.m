//
//  FFPopViewController.m
//  FF3DTouch
//
//  Created by 张玲玉 on 16/7/7.
//  Copyright © 2016年 张玲玉. All rights reserved.
//

#import "FFPopViewController.h"

@interface FFPopViewController ()

@end

@implementation FFPopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismiss)];
    [self.view addGestureRecognizer:tap];
}

- (void)dismiss
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    UIPreviewAction *action = [UIPreviewAction actionWithTitle:@"Aciton" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"click");
    }];
    NSArray *actions = @[action];
    return actions;
}

@end
