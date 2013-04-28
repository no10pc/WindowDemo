//
//  Person.h
//  WindowDemo
//
//  Created by 付 翾宇 on 13-4-27.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int identify;
    int age;
    NSString *name;
    int myNumber;//实例变量
    int className;
    
}
@property(nonatomic) int className;


-(int)myNumber;
-(void)setMyNumber:(int) _number;
-(void) printInfo;

-(void) setAge:(int) _age;
-(void) setName:(NSString *) _name;
-(int) Age;
-(int) Identidy;
-(id) initWithAge:(int) _age identify:(int) _identify;



//[类名 方法]
//[类名 方法名第一部分：arg1 方法名第二部分:arg2]
//[[类名 方法1:arg] 方法2]
//消息嵌套，里-》外

@end