//
//  ViewController.m
//  HLSTest
//
//  Created by Ceaser Larry on 4/27/13.
//
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:@"http://192.168.1.41:6544/Content/GetFile?StorageGroup=Streaming&FileName=1245_20130425220000.mpg.640x368_500kV_96kA.m3u8"]];

    self.moviePlayerController.movieSourceType = MPMovieSourceTypeStreaming;
    self.moviePlayerController.fullscreen = NO;
    self.moviePlayerController.shouldAutoplay = YES;
    [self.moviePlayerController prepareToPlay];
    
    [[self.moviePlayerController view] setFrame:[self.view bounds]];
    [self.view addSubview:[self.moviePlayerController view]];
    
    [self.moviePlayerController play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
