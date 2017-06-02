//
//  ViewController.m
//  testZKUIKit
//
//  Created by wansong on 02/06/2017.
//  Copyright © 2017 zhike. All rights reserved.
//

#import "ViewController.h"
#import "ZKVideoView.h"

NSString *TEST_VIDEO = @"http://media6.smartstudy.com/29/47/97142/2/dest.m3u8";

@interface ViewController ()
@property (strong, nonatomic) ZKVideoView *video;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.video = [[ZKVideoView alloc] initWithFullscreenOnly:NO];
  self.video.frame = CGRectMake(34, 148, 320, 180);
  self.video.containerVC = self;
  self.video.source = TEST_VIDEO;
  self.video.playerState = PlayerStatePaused;
  [self.view addSubview:self.video];
}

@end
