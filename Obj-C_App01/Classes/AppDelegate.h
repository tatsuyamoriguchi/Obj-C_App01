//
//  AppDelegate.h
//  Obj-C_App01
//
//  Created by Tatsuya Moriguchi on 11/15/21.
//  Copyright © 2021 Tatsuya Moriguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    NSString *selectedURL;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *selectedURL;

@end


