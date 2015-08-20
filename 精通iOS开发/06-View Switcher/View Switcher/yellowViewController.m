//
//  yellowViewController.m
//  View Switcher
//
//  Created by 周祺华 on 15/8/18.
//  Copyright (c) 2015年 周祺华. All rights reserved.
//

#import "yellowViewController.h"

@interface yellowViewController ()

@end

@implementation yellowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)yellowButtonPressed
{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Yellow View Button Pressed"
                          message:@"You pressed the button on thr yellow view"
                          delegate:nil
                          cancelButtonTitle:@"Yep, I did"
                          otherButtonTitles:nil];
    [alert show];
}

@end
