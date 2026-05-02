# Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Keep models to avoid R8/Proguard obfuscation issues with JSON serialization
-keep class familyapp.features.auth.domain.** { *; }
-keep class familyapp.features.**.domain.models.** { *; }

# Keep Freezed and JsonSerializable generated classes
-keepclassmembers class * {
    factory *.fromJson(java.util.Map);
    Map toJson();
}

# Keep annotations
-keepattributes *Annotation*
-keepattributes EnclosingMethod
-keepattributes InnerClasses
-keepattributes Signature

# Ignore warnings from Play Core and other libraries that are referenced but not present
-dontwarn com.google.android.play.core.**
-dontwarn com.google.android.gms.internal.**
-dontwarn androidx.window.extensions.**
-dontwarn androidx.window.sidecar.**
