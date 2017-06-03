//
//  ViewController.m
//  AFNewtWorkingLearning
//
//  Created by 李冬阳 on 2017/5/24.
//  Copyright © 2017年 lidongyang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
//  NSURLSession
  
  /**
  NSLog(@"%@", [UIDevice currentDevice].systemVersion);
  
  NSURL *url = [NSURL URLWithString:@"http://120.25.226.186:32812/login"];
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
  request.HTTPMethod = @"POST";
  NSString *username = @"username";
  NSString *pwd = @"password";
  NSString *param = [NSString stringWithFormat:@"username=%@&pwd=%@", username, pwd];
  request.HTTPBody = [param dataUsingEncoding:NSUTF8StringEncoding];
  [request setValue:[UIDevice currentDevice].systemVersion forHTTPHeaderField:@"User-Agent"];
  [request setTimeoutInterval:10];
  
  NSURLResponse *response = nil;
  NSError *error = nil;
  NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
  
  */

}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
