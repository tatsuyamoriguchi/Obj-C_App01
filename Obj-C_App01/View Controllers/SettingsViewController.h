//
//  SettingsViewController.h
//  Obj-C_App01
//
//  Created by Tatsuya Moriguchi on 11/15/21.
//  Copyright © 2021 Tatsuya Moriguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SettingsViewController : UIViewController<UITextFieldDelegate> {
    IBOutlet UISlider *slVol;
    IBOutlet UILabel *lbVol;
    IBOutlet UISegmentedControl *sgDiff;
    IBOutlet UILabel *lbDiff;
    
    IBOutlet UITextField *tfName;
    IBOutlet UITextField *tfEmail;
    IBOutlet UILabel *lbName;
    IBOutlet UILabel *lbEmail;
}

@property (nonatomic, strong) IBOutlet UITextField *tfName;
@property (nonatomic, strong) IBOutlet UITextField *tfEmail;
@property (nonatomic, strong) IBOutlet UILabel *lbName;
@property (nonatomic, strong) IBOutlet UILabel *lbEmail;

@property (nonatomic, strong) IBOutlet UISlider *slVol;
@property (nonatomic, strong) IBOutlet UILabel *lbVol;
@property (nonatomic, strong) IBOutlet UISegmentedControl *sgDiff;
@property (nonatomic, strong) IBOutlet UILabel *lbDiff;

@end

NS_ASSUME_NONNULL_END
