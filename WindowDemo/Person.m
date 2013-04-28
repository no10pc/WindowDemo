//
//  Person.m
//  WindowDemo
//
//  Created by 付 翾宇 on 13-4-27.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize className;
-(void) setName:(NSString *)_name
{
    name = _name;
}

-(void) setAge:(int) _age
{
    age = _age;
}

-(void) setIdentidy:(int) _identify
{
    identify = _identify;
}

-(int) Age
{
    return age;
}

-(int) Identidy
{
    return identify;
}


-(id) initWithAge:(int) _age identify:(int) _identify
{
    if(self=[super init])
    {
        age = _age;
        identify = _identify;
    }
    return self;
}

-(int)myNumber
{
    return myNumber;
}
-(void)setMyNumber:(int) _number
{
    myNumber = _number;
}
-(void) printInfo
{
    NSLog(@"Person number is:%d",myNumber);
}


@end
