# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:\Users\wm\AppData\Local\Android\Sdk/tools/proguard/proguard-android.txt
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

-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers

-keepattributes Signature
-keepattributes *Annotation*
-keepattributes Exceptions,InnerClasses

-keep class com.google.android.gms.internal.** { *; }
-keep class com.facebook.** { *; }
-dontwarn com.facebook.ads.**

-keep public class com.av.remusic.R$*{
    public static final int *;
}
-keep class com.av.remusic.json.** { *; }

-keep class retrofit.** { *; }
-keepclasseswithmembers class * {
    @retrofit.http.* <methods>;
}
-keepattributes Signature
-keep class com.google.gson.** { *; }

-keep class com.sun.mail.** { *; }

#-dontwarn com.sun.mail.**
#-dontwarn org.apache.**
#-dontwarn com.facebook.**
#-dontwarn com.google.**
#-dontwarn retrofit.**
#-dontwarn okio.**
#-dontwarn com.squareup.okhttp.internal.**
#-dontwarn javax.activation.**