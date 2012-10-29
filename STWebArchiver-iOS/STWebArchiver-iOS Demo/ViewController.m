//
//  ViewController.m
//  STWebArchiver-iOS Demo
//
//  Created by Foster Yin on 10/29/12.
//  Copyright (c) 2012 Foster Yin. All rights reserved.
//

#import "ViewController.h"
#import "STWebArchiver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIWebView *webView = [[[UIWebView alloc] init] autorelease];
    webView.delegate = self;
    
    self.view = webView;
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.hao123.com"]]];
}

+ (NSString*)getDocumentsFilePath:(NSString*)name//User can view this folder in iTunes
{
	NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
	NSString *filePath = [documentsDirectory stringByAppendingPathComponent:name];
	
	return filePath;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSURL *sourceUrl = [[webView request] URL];
	STWebArchiver *archiver = [[STWebArchiver alloc] init];
	[archiver archiveHTMLData:[NSData dataWithContentsOfURL:sourceUrl]
				 textEncoding:@"UTF-8"
					  baseURL:sourceUrl
              completionBlock:^(NSData *data) {
                  [data writeToFile:[[self class] getDocumentsFilePath:@"SampleWebArchive.webarchive"] atomically:YES];
                  [archiver release];
              }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
