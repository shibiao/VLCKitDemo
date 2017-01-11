//
//  ViewController.m
//  Demo
//
//  Created by sycf_ios on 2017/1/11.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController{
    VLCMediaPlayer *player;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [player setDelegate:self];
    self.playerView.wantsLayer = YES;
    self.playerView.layer.backgroundColor = [NSColor blueColor].CGColor;
    [self.view addSubview:self.playerView];
    [self.playerView setAutoresizingMask:NSViewHeightSizable|NSViewWidthSizable];
    self.playerView.fillScreen = YES;
    player = [[VLCMediaPlayer alloc]initWithVideoView:self.playerView];
//    NSURL *url = [NSURL URLWithString:@"http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"];
    VLCMedia *moview = [VLCMedia mediaWithPath:[[NSBundle mainBundle] pathForResource:@"2" ofType:@"mov"]];
    
    [player setMedia:moview];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(mediaPlayerStateChanged:) name:VLCMediaPlayerStateChanged object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(mediaPlayerTimeChanged:) name:VLCMediaPlayerTimeChanged object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(mediaPlayerTitleChanged:) name:VLCMediaPlayerTitleChanged object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(mediaPlayerChapterChanged:) name:VLCMediaPlayerChapterChanged object:nil];
    // Do any additional setup after loading the view.
}
- (void)mediaPlayerStateChanged:(NSNotification *)aNotification{
    NSLog(@"%s",__FUNCTION__);
}
- (void)mediaPlayerTimeChanged:(NSNotification *)aNotification{
    NSLog(@"%s",__FUNCTION__);
}
- (void)mediaPlayerTitleChanged:(NSNotification *)aNotification{
    NSLog(@"%s",__FUNCTION__);
}
- (void)mediaPlayerChapterChanged:(NSNotification *)aNotification{
    NSLog(@"%s",__FUNCTION__);
}
-(void)viewDidAppear{
    [super viewDidAppear];
     [player play];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
