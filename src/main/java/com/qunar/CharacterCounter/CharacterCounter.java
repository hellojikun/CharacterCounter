package com.qunar.CharacterCounter;




import java.io.*;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by jk on 2016/12/24.
 */

public class CharacterCounter {
    public static String str;
    public CharacterCounter(File file){
        try {
            BufferedReader read = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            String s;
            while((s = read.readLine())!= null){
                str = str+s+"\r\n";
            }
            System.out.println(str);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
    public CharacterCounter(String string){
        str = string;
    }
    public CharacterCounter(){}
    public Map parse(){
        Map res = new HashMap();
        res.put("A","5");
        res.put("B","6");
        res.put("C","7");
        res.put("D","9");

        return res;
    }
}
