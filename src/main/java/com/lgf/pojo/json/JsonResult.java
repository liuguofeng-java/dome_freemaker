package com.lgf.pojo.json;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class JsonResult {
    private int code;
    private String msg;
    private Object data;
    private static JsonResult jsonResult = new JsonResult();

    public JsonResult() {
    }

    public static JsonResult data(int code, String msg, Object data) {
        jsonResult.code =  code;
        jsonResult.msg =  msg;
        jsonResult.data =  data;
        return jsonResult;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
