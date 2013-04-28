//
//  LoginUserModel.m
//  WindowDemo
//
//  Created by 付 翾宇 on 13-4-29.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import "LoginUserModel.h"


@implementation LoginUserModel

@synthesize username,password,cid;


-(id) init
{
    if(self = [super init])
    {
        cid=100;
        name=@"Help";
    }
    return self;
}


@end
