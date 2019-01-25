//
//  DLVolumeButtons.h
//  DLVolumeButtons
//
//  Created by daiquanxiang on 2019/1/25.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^DLVolumeButtonBlock)(void);

@interface DLVolumeButtons : NSObject

// A block to run when the volume up button is pressed
@property (nonatomic, copy) DLVolumeButtonBlock upBlock;

// A block to run when the volume down button is pressed
@property (nonatomic, copy) DLVolumeButtonBlock downBlock;

// A shared audio session category
@property (nonatomic, strong) NSString * sessionCategory;

@property (nonatomic, assign) AVAudioSessionCategoryOptions sessionOptions;

/// 是否让系统音量键事件失效
- (void)startHandler:(BOOL)disableSystemVolumeHandler;
/// 结束监控
- (void)stopHandler;

/// 改变音量view 所在位置
- (void)changeVolumeSuperView:(UIView*)superView;

// A Function to set exactJumpsOnly.  When set to YES, only volume jumps of .0625 call the code blocks.
// If it doesn't match, the code blocks are not called and setInitialVolume is called
- (void)useExactJumpsOnly:(BOOL)enabled;

// Returns a button handler with the specified up/down volume button blocks
+ (instancetype)volumeButtonHandlerWithUpBlock:(DLVolumeButtonBlock)upBlock downBlock:(DLVolumeButtonBlock)downBlock;

@end

NS_ASSUME_NONNULL_END
