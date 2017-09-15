package com.bbharose;

import java.text.SimpleDateFormat;
import java.util.Date;



public class DateConverter {
    
    public static Date convertToDate(String date){
        Date d = null;
        try{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            d = sdf.parse(date);
            
        }catch(Exception exp){
            System.out.println("Date Exception :"+exp);
        }
        return d;
    }
    
}
