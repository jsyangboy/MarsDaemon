package com.marswin89.marsdaemon.demo;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.Nullable;

import com.lizhi.component.push.lzpushbase.utils.PushLogzUtil;

/**
 * @Author yangqingyuan
 * @Date 2020/9/28-15:42
 * @Email yangqingyuan@lizhi.fm
 */
public class TestService extends Service {
    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        PushLogzUtil.logE("TestService:onCreate");
    }
}
