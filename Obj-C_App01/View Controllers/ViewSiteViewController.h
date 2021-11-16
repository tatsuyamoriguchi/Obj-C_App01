//
//  ViewSiteViewController.h
//  Obj-C_App01
//
//  Created by Tatsuya Moriguchi on 11/15/21.
//  Copyright © 2021 Tatsuya Moriguchi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewSiteViewController : UIViewController<WKNavigationDelegate> {
    IBOutlet WKWebView *webView;
    IBOutlet UIActivityIndicatorView *activity;
    
}
@property (nonatomic, strong) IBOutlet WKWebView *webView;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *activity;


@end

NS_ASSUME_NONNULL_END
