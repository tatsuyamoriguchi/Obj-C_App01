//
//  SiteCell.m
//  Obj-C_App01
//
//  Created by Tatsuya Moriguchi on 11/15/21.
//  Copyright © 2021 Tatsuya Moriguchi. All rights reserved.
//

#import "SiteCell.h"

@implementation SiteCell
@synthesize primaryLabel, secondaryLabel, myImageView;


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self) {
        primaryLabel = [[UILabel alloc] init];
        primaryLabel.textAlignment = NSTextAlignmentLeft;
        primaryLabel.font = [UIFont systemFontOfSize:18];
        primaryLabel.textColor = [UIColor blackColor];
        primaryLabel.backgroundColor = [UIColor clearColor];

        secondaryLabel = [[UILabel alloc] init];
        secondaryLabel.textAlignment = NSTextAlignmentLeft;
        secondaryLabel.font = [UIFont systemFontOfSize:18];
        secondaryLabel.textColor = [UIColor blueColor];
        secondaryLabel.backgroundColor = [UIColor clearColor];
        
        myImageView = [[UIImageView alloc] init];
        
        [self.contentView addSubview:primaryLabel];
        [self.contentView addSubview:secondaryLabel];
        [self.contentView addSubview:myImageView];
        
    }
    return self;
}

- (void)layoutSubviews {
    myImageView.frame = CGRectMake(5, 5, 45, 45);
    primaryLabel.frame = CGRectMake(100, 5, 460, 30);
    secondaryLabel.frame = CGRectMake(110, 30, 460, 30);
}




- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
