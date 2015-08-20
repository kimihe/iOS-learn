//
//  KimiDatePickerViewController.m
//  Pickers
//
//  Created by 周祺华 on 15/8/19.
//  Copyright (c) 2015年 周祺华. All rights reserved.
//

#import "KimiDatePickerViewController.h"

@interface KimiDatePickerViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)buttonPressed:(id)sender;
@end

@implementation KimiDatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDate *now = [NSDate date];
    [self.datePicker setDate:now animated:NO];
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

- (IBAction)buttonPressed:(id)sender {
    NSDate *selected = [self.datePicker date];
    NSString *message = [[NSString alloc]initWithFormat:@"The date and time you selected is: %@", selected];
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Date and Time selected"
                          message:message
                          delegate:nil
                          cancelButtonTitle:@"That's so true!"
                          otherButtonTitles:nil];
    [alert show];
}
@end
