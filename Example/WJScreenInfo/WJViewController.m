//
//  WJViewController.m
//  WJScreenInfo
//
//  Created by DPYNKL on 08/06/2022.
//  Copyright (c) 2022 DPYNKL. All rights reserved.
//

#import "WJViewController.h"
#import <WJScreenInfo/WJScreenInfo.h>

@interface WJViewController ()

@end

@implementation WJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    CGFloat width = [[WJScreenInfo sharedInstance] wj_getBorderWidth:0.5];
    NSLog(@"---width:%f", width);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
