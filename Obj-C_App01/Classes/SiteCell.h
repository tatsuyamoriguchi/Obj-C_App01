//
//  SiteCell.h
//  Obj-C_App01
//
//  Created by Tatsuya Moriguchi on 11/15/21.
//  Copyright © 2021 Tatsuya Moriguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SiteCell : UITableViewCell {
    UILabel *primaryLabel;
    UILabel *secondaryLabel;
    UIImageView *myImageView;
    
}
@property(nonatomic, strong) UILabel *primaryLabel;
@property(nonatomic, strong) UILabel *secondaryLabel;
@property(nonatomic, strong) UIImageView *myImageView;

@end

NS_ASSUME_NONNULL_END
