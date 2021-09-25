//
//  ViewController.m
//  WJScreenInfo
//
//  Created by jieke on 2019/7/27.
//  Copyright © 2019 jieke. All rights reserved.
//

#import "ViewController.h"
#import "WJScreenInfo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    NSLog(@"---%f", [[WJScreenInfo sharedInstance] wj_getBorderWidth:0.5]);
}


@end
