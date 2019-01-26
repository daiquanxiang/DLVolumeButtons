//
//  DLViewController.m
//  DLVolumeButtons
//
//  Created by daiquanxiang on 01/25/2019.
//  Copyright (c) 2019 daiquanxiang. All rights reserved.
//

#import "DLViewController.h"

#import "DLVolumeButtons.h"

@interface DLViewController ()

@property (nonatomic, strong) DLVolumeButtons *volumeButtons;

@end

@implementation DLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setupVolumeButtons];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)setupVolumeButtons
{
    if (!self.volumeButtons) {
        
        __weak typeof(self) weakSelf = self;
        self.volumeButtons = [DLVolumeButtons volumeButtonHandlerWithUpBlock:^{
            NSLog(@"点击了 上音量键");
            [weakSelf showAlertWithText:@"点击了 上音量键"];
        } downBlock:^{
            NSLog(@"点击了 下音量键");
            [weakSelf showAlertWithText:@"点击了 下音量键"];
        }];
        
        if ([self.volumeButtons respondsToSelector:@selector(changeVolumeSuperView:)]) {
            [self.volumeButtons changeVolumeSuperView:self.view];
        }
    }
}

- (void) showAlertWithText:(NSString*)text
{
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"" message:text preferredStyle:UIAlertControllerStyleAlert];
    [vc addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)valueChanged:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex) {
        // 开
        [self.volumeButtons startHandler:YES];
    } else {
        // 关
        [self.volumeButtons stopHandler];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
