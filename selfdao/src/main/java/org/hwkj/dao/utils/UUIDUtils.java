package org.hwkj.dao.utils;

import java.util.UUID;

/**
 * Created by wendong.hu on 2017/5/31.
 */
public class UUIDUtils {

    public static String getUUID() {
    	return UUID.randomUUID().toString().replace("-","");
    }

    public static void main(String[] args) {
        String uuid = UUIDUtils.getUUID();
        System.out.println(uuid.length());
        System.out.println(uuid);
    }
}
