//
//  emailViewController.h
//  StarkWeather
//
//  Created by KennethKrakowski on 9/14/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface emailViewController : UIViewController <MFMailComposeViewControllerDelegate, UIImagePickerControllerDelegate>
typedef void (^ALAssetsLibraryAssetForURLResultBlock)(ALAsset *asset);
typedef void (^ALAssetsLibraryAccessFailureBlock)(NSError *error);

@property(nonatomic,assign) id<MFMailComposeViewControllerDelegate> mailComposeDelegate;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sendEmail;

- (void)mailComposeController:(MFMailComposeViewController*)DetailViewController didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error;
+ (BOOL)canSendMail;
//- (void)addAttachmentData:(NSData*)attachment mimeType:(NSString*)mimeType fileName:(NSString*)filename;
- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion;
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;


@end