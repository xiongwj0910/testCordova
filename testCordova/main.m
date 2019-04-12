//
//  main.m
//  testCordova
//
//  Created by xiongwenjie on 2019/4/10.
//  Copyright © 2019年 xiongwenjie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
int getMin(int *pArray ,int length,int *nIndex){
    int nMin = pArray[0];
    for (int i = 0; i < length; i++) {
        //获取一个最小的数
        if(pArray[i] < nMin){
            nMin = pArray[i];
            *nIndex = i;
        }
    }
    return nMin;
}

void getkMin(int *pArray,int length,int k){
    if (k < 0) {
        return;
    }
    
    int *pMinArray = malloc(sizeof(int) * k);
    int nIndex = 0;
    for (int j = 0; j < k; j++) {
        int nMin = getMin(pArray, length, &nIndex);
        
        pMinArray[j] = nMin;
        //交换位置，使得第一个总是最小值
        int nTemp = pArray[0];
        pArray[0] = pArray[nIndex];
        pArray[nIndex] = nTemp;
        //指针右移
        pArray++;
        
        printf("%d ->",pMinArray[j]);
    }
}

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}




