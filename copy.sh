
DIR=lib/xamarin.android/xbuild-frameworks/MonoAndroid/

mkdir -p $DIR
# It is stupid, but Microsoft.Common.targets expects TargetFrameworkRootPath
# to consist of only one directory, which means we need ALL frameworks packaged!
cp -R $XAMARIN_ANDROID_SOURCES/bin/Debug/$DIR/v1.0 $DIR
cp -R $XAMARIN_ANDROID_SOURCES/bin/Debug/$DIR/v9.0 $DIR
cp AndroidApiInfo.xml $DIR/v9.0/
cp FrameworkList.xml $DIR/v9.0/RedistList/
