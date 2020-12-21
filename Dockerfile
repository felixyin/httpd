FROM qtrj.i234.me:8084/centos
#维护该镜像的用户信息
MAINTAINER The CentOS Project
#镜像操作指令安装叩ache 软件包
RUN yum -y update
RUN yum -y install httpd
#开启 80 端口
EXPOSE 80
#Simple startup sαipt to avoid some issues observed with con饲iner restart
#复制网站首页文件
ADD index.html /var/www/html/index.html
#将执行脚本复制到镜像中
ADD run.sh /run.sh
RUN chmod 775 /run.sh
#启动容椿时执行脚本
CMD ["/run.sh"]