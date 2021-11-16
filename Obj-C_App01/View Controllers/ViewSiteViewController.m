//
//  ViewSiteViewController.m
//  Obj-C_App01
//
//  Created by Tatsuya Moriguchi on 11/15/21.
//  Copyright © 2021 Tatsuya Moriguchi. All rights reserved.
//

#import "ViewSiteViewController.h"
#import "AppDelegate.h"

@interface ViewSiteViewController()

@end

@implementation ViewSiteViewController
@synthesize webView, activity;

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    [activity setHidesWhenStopped:NO];
    [activity startAnimating];
    
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [activity setHidesWhenStopped:YES];
    [activity stopAnimating];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *mainDelgate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    NSURL *urlAddress = [NSURL URLWithString:mainDelgate.selectedURL];
    NSURLRequest *url = [NSURLRequest requestWithURL:urlAddress];
    [webView loadRequest:url];
    webView.navigationDelegate = self;
    
}


@end
