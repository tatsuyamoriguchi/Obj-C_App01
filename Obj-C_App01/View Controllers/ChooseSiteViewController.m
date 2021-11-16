//
//  ChooseSiteViewController.m
//  Obj-C_App01
//
//  Created by Tatsuya Moriguchi on 11/15/21.
//  Copyright © 2021 Tatsuya Moriguchi. All rights reserved.
//

#import "ChooseSiteViewController.h"
#import "SiteCell.h"
#import "AppDelegate.h"

@interface ChooseSiteViewController ()

@end

@implementation ChooseSiteViewController
@synthesize listData, imageData, siteData;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    listData = [NSArray arrayWithObjects:@"Banana",@"Peach",@"Kiwi",@"Grape",@"Apple",@"Pear",@"Citrus",@"Lemon",@"Strawberry",@"Pomegranate",@"Watermelon",@"Orange",@"Blueberry",@"Blackberry",@"Cherry",@"Scotch-Brite", nil];
    imageData = [NSArray arrayWithObjects:@"iu-1.jpg",@"iu-2.jpg",@"iu-3.jpg",@"iu-4.jpg",@"iu-5.jpg",@"iu-6.jpg",@"iu-7.jpg",@"iu-8.jpg",@"iu-9.jpg",@"iu-10.jpg",@"iu-11.jpg",@"iu-12.jpg",@"iu-13.jpg",@"iu-14.jpg",@"iu-15.jpg",@"iu-16.jpg", nil];
    siteData = [NSArray arrayWithObjects:@"https://en.wikipedia.org/wiki/Banana",
    @"https://en.wikipedia.org/wiki/Peach",
    @"https://en.wikipedia.org/wiki/Kiwifruit",
    @"https://en.wikipedia.org/wiki/Grape",
    @"https://en.wikipedia.org/wiki/Apple",
    @"https://en.wikipedia.org/wiki/Pear",
    @"https://en.wikipedia.org/wiki/Citrus",
    @"https://en.wikipedia.org/wiki/Lemon",
    @"https://en.wikipedia.org/wiki/Strawberry",
    @"https://en.wikipedia.org/wiki/Pomegranate",
    @"https://en.wikipedia.org/wiki/Watermelon",
    @"https://en.wikipedia.org/wiki/Orange",
    @"https://en.wikipedia.org/wiki/Blueberry",
    @"https://en.wikipedia.org/wiki/Blackberry",
    @"https://en.wikipedia.org/wiki/Cherry",
                @"https://en.wikipedia.org/wiki/Scotch-Brite", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return listData.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SiteCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil) {
        cell = [[SiteCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.primaryLabel.text = [listData objectAtIndex:indexPath.row];
    cell.secondaryLabel.text = [siteData objectAtIndex:indexPath.row];
    cell.myImageView.image = [UIImage imageNamed:[imageData objectAtIndex:indexPath.row]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    return cell;
    
}

-(IBAction)unwindToChooseVC:(UIStoryboardSegue *)sender {

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    mainDelegate.selectedURL = [siteData objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"ChooseSegueToView" sender:self];
    
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
