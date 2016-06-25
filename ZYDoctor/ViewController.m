//
//  ViewController.m
//  ZYDoctor
//
//  Created by zhongyu on 16/6/24.
//  Copyright © 2016年 RyeWhiskey. All rights reserved.
//

#import "ViewController.h"
#import <EMSDK.h>

@interface ViewController ()

<
    IEMChatManager,
    IEMContactManager,
    IEMGroupManager,
    IEMChatroomManager
>

@end

@implementation ViewController

- (void)registerID
{
//    EMError *error = [[EMClient sharedClient] registerWithUsername:@"iOSDev02" password:@"111111"];
//    
//    if (error==nil) {
//        NSLog(@"注册成功");
//    }
}

- (void)autoLogin
{
    EMError *error = [[EMClient sharedClient] loginWithUsername:@"iOSDev01" password:@"111111"];
    
    if (!error)
    {
        [[EMClient sharedClient].options setIsAutoLogin:YES];
    }
}


- (void)buildSession
{
    [[EMClient sharedClient].chatManager getConversation:@"iOSDev02" type:EMConversationTypeChat createIfNotExist:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self registerID];
    
    [self autoLogin];
    
    [self buildSession];
  
    
    
}

- (void)didConnectionStateChanged:(EMConnectionState)aConnectionState
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
