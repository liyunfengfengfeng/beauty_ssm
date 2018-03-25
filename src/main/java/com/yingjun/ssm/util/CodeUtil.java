package com.yingjun.ssm.util;

/**
 * 生成6位随机验证码
 * @author liyunfeng
 */
public class CodeUtil {

    public static Integer getRandNum(int min, int max) {
        Integer randNum = min + (int)(Math.random() * ((max - min) + 1));
        return randNum;
    }

    public static String rand(){
       return getRandNum(100000,999999).toString().trim();
    }
    public static void main(String[]args){rand();}
}
