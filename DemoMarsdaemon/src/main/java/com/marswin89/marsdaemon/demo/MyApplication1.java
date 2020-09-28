package com.marswin89.marsdaemon.demo;

import android.content.Context;
import android.util.Log;

/*import com.lizhi.component.push.lzpushbase.constant.PushType;
import com.lizhi.component.push.lzpushbase.utils.PushLogzUtil;
import com.lizhi.component.push.lzpushsdk.PushSdkManager;*/
import com.marswin89.marsdaemon.DaemonApplication;
import com.marswin89.marsdaemon.DaemonConfigurations;
/*import com.yibasan.lizhifm.sdk.platformtools.ApplicationContext;
import com.yibasan.lizhifm.sdk.platformtools.utils.ProcessUtil;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;*/

/**
 * Implementation 1<br/>
 * override one method is ok.<br/>
 * <p>
 * Created by Mars on 12/24/15.
 */
public class MyApplication1 extends DaemonApplication {

    /**
     * you can override this method instead of {@link android.app.Application attachBaseContext}
     *
     * @param base
     */
    @Override
    public void attachBaseContextByDaemon(Context base) {
        super.attachBaseContextByDaemon(base);
    }


    /**
     * give the configuration to lib in this callback
     *
     * @return
     */
    @Override
    protected DaemonConfigurations getDaemonConfigurations() {
        DaemonConfigurations.DaemonConfiguration configuration1 = new DaemonConfigurations.DaemonConfiguration(
                "com.marswin89.marsdaemon.demo:process1",
                Service1.class.getCanonicalName(),
                Receiver1.class.getCanonicalName());

        DaemonConfigurations.DaemonConfiguration configuration2 = new DaemonConfigurations.DaemonConfiguration(
                "com.marswin89.marsdaemon.demo:process2",
                Service2.class.getCanonicalName(),
                Receiver2.class.getCanonicalName());

        DaemonConfigurations.DaemonListener listener = new MyDaemonListener();
        //return new DaemonConfigurations(configuration1, configuration2);//listener can be null
        return new DaemonConfigurations(configuration1, configuration2, listener);
    }

    @Override
    public void onCreate() {
        super.onCreate();
        //ApplicationContext.init(this);
        Log.e("yqy", "onCreate thread:" + Thread.currentThread());

        //initTask();
    }

/*
    private void initTask(){
        //注意做进程判断
        if (!ApplicationContext.isInMainProcess()) {
            PushLogzUtil.logW("is not InMainProcess:"+ ProcessUtil.getCurrProcessName(this));
            return;
        }

        PushSdkManager.getInstance().init(this, "abcd", null, new Function1<Boolean, Unit>() {
            @Override
            public Unit invoke(Boolean aBoolean) {
                final int[] spareChannel = {PushType.PUSH_TYPE_GETUI, PushType.PUSH_TYPE_XIAOMI};
                PushSdkManager.getInstance().register(spareChannel);
                return null;
            }
        });
    }*/

    class MyDaemonListener implements DaemonConfigurations.DaemonListener {
        @Override
        public void onPersistentStart(Context context) {
            // PushLogzUtil.logW( "onPersistentStart:" + Thread.currentThread());
            Log.e("yqy", "onPersistentStart:" + Thread.currentThread());
        }

        @Override
        public void onDaemonAssistantStart(Context context) {
            //PushLogzUtil.logW( "onDaemonAssistantStart:" + Thread.currentThread());
            Log.e("yqy", "onDaemonAssistantStart:" + Thread.currentThread());
        }

        @Override
        public void onWatchDaemonDaed() {
            //PushLogzUtil.logW("onWatchDaemonDaed:" + Thread.currentThread());
            Log.e("yqy", "onWatchDaemonDaed:" + Thread.currentThread());
        }
    }
}
