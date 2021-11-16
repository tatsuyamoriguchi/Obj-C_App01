//
//  ChooseSiteViewController.h
//  Obj-C_App01
//
//  Created by Tatsuya Moriguchi on 11/15/21.
//  Copyright © 2021 Tatsuya Moriguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChooseSiteViewController : UIViewController<UITableViewDataSource, UITableViewDelegate> {
    NSArray *listData;
    NSArray *siteData;
    NSArray *imageData;
    
}

@property (nonatomic, strong) NSArray *listData;
@property (nonatomic, strong) NSArray *siteData;
@property (nonatomic, strong) NSArray *imageData;

@end

NS_ASSUME_NONNULL_END
