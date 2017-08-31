package org.hwkj.dao.utils;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;

import java.util.Date;

/**
 * Created by wendong.hu on 2017/5/31.
 */
public class MyDateUtils {

    public final static String PATTERN = "yyyy-MM-dd HH:mm:ss";

    public static String getDateString(Date date, String pattern) {
        if(StringUtils.isBlank(pattern)){
            pattern = PATTERN;
        }
    	return DateFormatUtils.format(date,pattern);
    }

}
