//
//  ConversationController.m
//  融云的集成
//
//  Created by wtw on 15/12/28.
//  Copyright © 2015年 jjl. All rights reserved.
//

#import "ConversationController.h"

@interface ConversationController ()

@end

@implementation ConversationController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置会话的类型，如单聊、讨论组、群聊、聊天室、客服、公众账号等
    self.conversationType = ConversationType_PRIVATE;
    //设置会话的目标会话ID。（单聊、客服、公众账号服务为对方的ID，讨论组、群聊、聊天室为会话的ID）
    self.targetId = @"wei2";
    //用户名
    self.userName = @"威2";
    //设置聊天会话界面要显示的标题
    self.title = self.userName;
    
    NSDictionary *dict = [[NSDictionary alloc] init];
    
    NSString *str = @"111";
    
    dict = @{@"111":str};
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
