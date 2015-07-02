# scripts
日常工作中使用的bash脚步

1. synhtime.sh
   用于虚拟机同步硬件时间的脚步，适用于工作中挂起虚拟机又不想采用NTP同步时间的情况。
   使用方法：
       1) 上传文件到/usr/local/sbin目录，并给予可执行权限
	      chmod +x /usr/local/sbin/synhtime.sh
	   2) 以用户root为例，在/root/.profile后增加行(synhtime.sh &)
	      如果要对每个用户生效则修改/etc/profile文件
	   