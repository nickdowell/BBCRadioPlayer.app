//
//  ViewController.m
//  BBCRadioPlayer
//
//  Created by Nicolas Dowell on 2016-02-20.
//  Copyright © 2016 Nick Dowell. All rights reserved.
//

#import "ViewController.h"

@import WebKit;


@interface ViewController () <WebFrameLoadDelegate>

@property (nonatomic, weak) IBOutlet WebView *webView;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.webView.customUserAgent = @"Mozilla/5.0 (iPod; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1";
    self.webView.frameLoadDelegate = self;
    [self.webView.mainFrame loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.bbc.co.uk/radio/player/bbc_6music"]]];
}

- (void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame
{
    self.view.window.title = title;
}

@end
