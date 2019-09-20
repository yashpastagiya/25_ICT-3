//
//  main.m
//  ProblemSheetASMDProg
//
//  Created by admin on 25/06/19.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Prog2 : NSObject
{
    int num1,num2;
    int res;
}
-(void) Add : (int) a : (int) b;
-(void) Sub : (int) c : (int) d;
-(void) Mult : (int) e : (int) f;
-(void) Div : (int) g : (int) h;

@end

@implementation Prog2
-(void) Add:(int)a :(int)b
{
    num1 = a;
    num2 = b;
    res = num1 + num2;
    printf("sum is %d and %d = %d",num1,num2,res);
}

-(void) Sub:(int)c :(int)d
{
    num1 = c;
    num2 = d;
    res = num1 - num2;
    printf("Substraction is %d and %d = %d",num1,num2,res);
}

-(void) Mult:(int)e :(int)f
{
    num1 = e;
    num2 = f;
    res = num1 * num2;
    printf("Multiplication is %d and %d = %d",num1,num2,res);
}

-(void) Div:(int)g :(int)h
{	
    num1 = g;
    num2 = h;
    res = num1 / num2;
    printf("Division is %d and %d = %d",num1,num2,res);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int ch;
        int a,b;
        
        printf("Enter A :- ");
        scanf("%d", &a);
        
        printf("Enter B :- ");
        scanf("%d", &b);
        
        do
        {
            printf("\n");
            printf("1.Addtion \n");
            printf("2.Substraction \n");
            printf("3.Multiplication \n");
            printf("4.Division \n");
            printf("5.Exit \n");
            printf("Enter the Choice: ");
            scanf("%d", &ch);
            
            Prog2 *obj = [[Prog2 alloc ]init];
            
            
            switch (ch) {
                case 1:
                    [obj Add : a : b];
             break;
                case 2:
                    [obj Sub: a : b];
                    break;
                case 3:
                    [obj Mult: a : b];
                    break;
                case 4:
                    [obj Div : a : b];
                    break;
                case 5:
                    break;
                    
                default:
                    break;
            }
        }while(ch!=5);
    }
    return 0;
}
