//
//  SettingsViewController.m
//  Obj-C_App01
//
//  Created by Tatsuya Moriguchi on 11/15/21.
//  Copyright © 2021 Tatsuya Moriguchi. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
@synthesize slVol, lbVol, sgDiff, lbDiff;
@synthesize tfName, tfEmail, lbName, lbEmail;


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    return [textField resignFirstResponder];
}

-(IBAction)saveData:(id)sender {
    lbName.text = tfName.text;
    [lbEmail setText:[tfEmail text]];
}


-(IBAction)sliderValueChanged:(id)sender {
    [self updateSliderLabel];
}

- (void)updateSliderLabel {
    float vol = slVol.value;
    NSString *strVol = [NSString stringWithFormat:@"%.2f", vol];
    lbVol.text = strVol;
                        
}

-(void)updateSegmentLabel {
    NSString *str = [sgDiff titleForSegmentAtIndex:sgDiff.selectedSegmentIndex];
    NSString *textLabel = [NSString stringWithFormat:@"Difficulty: %@", str];
    lbDiff.text = textLabel;
    
}

-(IBAction)segmentDidChanged:(id)sender {
    [self updateSegmentLabel];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateSliderLabel];
    [self updateSegmentLabel];
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
