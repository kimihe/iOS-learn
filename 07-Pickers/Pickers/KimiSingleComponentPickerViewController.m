//
//  KimiSingleComponentPickerViewController.m
//  Pickers
//
//  Created by 周祺华 on 15/8/19.
//  Copyright (c) 2015年 周祺华. All rights reserved.
//

#import "KimiSingleComponentPickerViewController.h"

@interface KimiSingleComponentPickerViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *singlePicker;
@property (strong, nonatomic) NSArray *characterNames;

- (IBAction)buttonPressed:(id)sender;

@end

@implementation KimiSingleComponentPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.characterNames = @[@"Luke", @"Leia", @"Han", @"Chewbacca", @"Atroo", @"Threepio", @"Lando"];
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
    NSInteger row = [self.singlePicker selectedRowInComponent:0];
    NSString *selected = self.characterNames[row];
    NSString *title = [[NSString alloc]initWithFormat:@"You selected %@!", selected];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title
                                             message:@"Thank you for choosing!"
                                             delegate:nil cancelButtonTitle:@"You are welcome!"
                                             otherButtonTitles:nil];
    [alert show];
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.characterNames count];
}

#pragma mark Picker Delegate Methods
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.characterNames[row];
}
@end
