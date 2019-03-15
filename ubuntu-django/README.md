# Django基础环境说明（Docker）

------

使用Dockerfile生成包含Django Centos7基础镜像，比centos-python基础镜像增加如下内容：
1. 暴露8000端口
2. 新建卷，需做卷持久化：  
    * /opt/django/project -- 代码路径
    * /opt/django/logs    -- 日志路径
    * /opt/django/venv    -- 虚拟环境
3. 切换初始环境到 /opt/django/project
4. 初始化virtualenv环境
5. 执行run.sh（还需扩充）：   
    * 安装pip依赖
    * 启动uwsgi
