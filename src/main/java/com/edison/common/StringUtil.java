package com.edison.common;

public class StringUtil {

    public static boolean isEmpty(String data){
        if (data == null || "".equals(data) ) {
        return true;
        }

        return false;
    }
    
    public static String questionNumString(int i){
       int num = 0;
       if ( i>=10 && i<=99) {
           num = 1;
       } else if (i>=100 && i<=999) {
           num = 2;
       }else if (i>=1000 && i<=9999) {
           num = 3;
       } else if (i>=10000 && i<=99999) {
           num = 4;
       }
       String questionNum="Q";
       for (int z = 0; z<(6-1-num);z++) {
           questionNum = questionNum + "0";
       }
      return  questionNum + i;
    }
}
