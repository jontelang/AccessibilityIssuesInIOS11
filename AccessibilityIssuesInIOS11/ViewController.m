//
//  ViewController.m
//  AccessibilityIssuesInIOS11
//
//  Created by Jonathan Winger Lang on 12/4/17.
//  Copyright © 2017 Jonathan Winger Lang. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    titleView.backgroundColor = [UIColor redColor];
    titleView.accessibilityIdentifier = @"title-view-accessibility-identifier";
    
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:titleView];    
    barButtonItem.accessibilityIdentifier = @"bar-button-item-accessibility-identifier";
    
    [self.navigationItem setLeftBarButtonItem:barButtonItem];
}

-(void)pop{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
