# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/guoyang/Developer/android-sdk-macosx/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
-keep public class com.alibaba.android.arouter.routes.**{*;}
-keep public class com.alibaba.android.arouter.facade.**{*;}
-keep class * implements com.alibaba.android.arouter.facade.template.ISyringe{*;}

# 如果使用了 byType 的方式获取 Service，需添加下面规则，保护接口
-keep interface * implements com.alibaba.android.arouter.facade.template.IProvider

# 如果使用了 单类注入，即不定义接口实现 IProvider，需添加下面规则，保护实现
# -keep class * implements com.alibaba.android.arouter.facade.template.IProvider

-keep class io.agora.**{*;}

-keep class io.ktor.** { *; }


-keepattributes EnclosingMethod
-keepattributes InnerClasses

#---------------------   下方是华为推送   ------------------------
-ignorewarning
-keep class com.hianalytics.android.**{*;}
-keep class com.huawei.updatesdk.**{*;}
-keep class com.huawei.hms.**{*;}
-keep class com.yibasan.pushsdk_huawei.inject.**{*;}
-keep class com.yibasan.pushsdk_huawei.HuaWeiPushProxy$*{*;}
-keep class com.yibasan.pushsdk_huawei.**{*;}
#---------------------   上方是华为推送   ------------------------


#---------------------   下方是小米推送   ------------------------
-dontwarn com.xiaomi.push.**
-keep class com.yibasan.pushsdk_xiaomi.inject.**{*;}
-keep class com.yibasan.pushsdk_xiaomi.XiaoMiPushProxy$*{*;}
#---------------------   上方是小米推送   ------------------------


#---------------------   下方是魅族推送   ------------------------
-keep class com.yibasan.pushsdk_meizu.inject.**{*;}
-keep class com.yibasan.pushsdk_meizu.MeiZuPushProxy$*{*;}
#---------------------   上方是魅族推送   ------------------------

#---------------------   下方是vivo推送   ------------------------
-dontwarn com.vivo.push.**
-keep class com.vivo.push.**{*; }
-keep class com.vivo.vms.**{*; }
-keep class xxx.xxx.xxx.PushMessageReceiverImpl{*;}
-keep class com.yibasan.pushsdk_vivo.inject.**{*;}
#---------------------   上方是vivo推送   ------------------------

#---------------------   下方是oppo推送   ------------------------
-keep class com.yibasan.pushsdk_oppo.**{*;}
-keep class com.yibasan.pushsdk_oppo.inject.**{*;}
-keep public class * extends android.app.Service
-keep class com.heytap.msp.** { *;}
#---------------------   上方是oppo推送   ------------------------

#---------------------   下方是个推推送   ------------------------
-dontwarn com.igexin.**
-keep class com.igexin.** { *; }
-keep class org.json.** { *; }
-keep class com.yibasan.pushsdk_getui.inject.**{*;}
-keep class com.yibasan.pushsdk_getui.GetuiPushProxy$*{*;}
#---------------------   上方是个推推送   ------------------------



-keepattributes EnclosingMethod
-keepattributes InnerClasses

#----------------------------分享---------------------#
-keep class **.R$**{*;}
#----------------------------分享---------------------#

-dontwarn org.xmlpull.v1.**
-dontnote org.xmlpull.v1.**
-dontnote org.apache.http.**
-dontwarn java.awt.**
-dontwarn org.postgresql.**
-dontwarn java.util.concurrent.**

-dontwarn org.reactivestreams.FlowAdapters
-dontwarn org.reactivestreams.**
-dontwarn java.util.concurrent.flow.**
-dontwarn java.util.concurrent.**

-dontskipnonpubliclibraryclassmembers

-dontwarn org.xmlpull.v1.**

-dontwarn org.kobjects.**
-dontwarn org.ksoap2.**
-dontwarn org.kxml2.**
-dontwarn org.xmlpull.v1.**

-keep class org.kobjects.** { *; }
-keep class org.ksoap2.** { *; }
-keep class org.kxml2.** { *; }
-keep class org.xmlpull.** { *; }

-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontoptimize
-dontpreverify

-dontwarn okhttp3.internal.platform.*

-dontwarn com.google.common.base.**
-keep class com.google.common.base.** {*;}
-dontwarn com.google.errorprone.annotations.**
-keep class com.google.errorprone.annotations.** {*;}
-dontwarn com.google.j2objc.annotations.**
-keep class com.google.j2objc.annotations.** { *; }
-dontwarn java.lang.ClassValue
-keep class java.lang.ClassValue { *; }
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-keep class org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement { *; }

-keep class com.google.**
-dontwarn com.google.**

-keep class com.yibasan.lizhifm.**
-keep class com.yibasan.lizhifm.rds.**{*;}
-dontwarn com.yibasan.lizhifm.**

-dontwarn com.tencent.**

-dontwarn kotlinx.coroutines.**
-keep class kotlinx.coroutines.**