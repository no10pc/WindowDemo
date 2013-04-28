//
//  LoginUserModel.h
//  WindowDemo
//
//  Created by 付 翾宇 on 13-4-29.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginUserModel : NSObject
{
    @protected
    int cid;
    
    NSString *username;
    NSString *password;
    @public
    Nsstring *name;
}
@property(nonatomic,assign) NSString *username;
@property(nonatomic,assign) NSString *password;
@property(nonatomic) int cid;



@end
