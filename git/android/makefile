export JAVA_HOME := /usr/java/jdk1.7.0_75/#/usr/java/latest
export PATH := $(JAVA_HOME)/bin:$(PATH)

all:
	@echo $@
clean:
	@echo $@

## disable open-jdk in core.mk or main.mk
build:
	@echo $@
	pushd src; \
	java -version; \
	source ./build/envsetup.sh; \
        lunch aosp_arm-eng; \
        opt-env make -j2; \
        popd;

update: src
#for network troubleshoot
#sudo sysctl -w net.ipv4.tcp_window_scaling=0
	repo sync -j2

src:
	mkdir src; \
	pushd src; \
	repo init -u https://android.googlesource.com/platform/manifest -b android-5.1.0_r3 \
	popd;

.PHONY: all clean build
