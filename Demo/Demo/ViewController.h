//
//  ViewController.h
//  Demo
//
//  Created by sycf_ios on 2017/1/11.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <VLCKit/VLCKit.h>
@interface ViewController : NSViewController<VLCMediaPlayerDelegate>

@property (weak) IBOutlet VLCVideoView *playerView;

@end

