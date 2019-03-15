# Django supervisor 镜像说明（Docker）

基于centos-django镜像构建专门用于跑celery、python后台脚本的supervisor镜像，镜像有如下特性：
1. 新建卷，需做卷持久化：  
    * /opt/django/project -- 代码路径
    * /opt/django/logs    -- 日志路径
    * /opt/django/venv    -- 虚拟环境
2. 切换初始环境到 /opt/django/project
3. 初始化virtualenv环境
4. 执行run.sh（还需扩充）：   
    * 安装pip依赖
    * 启动uwsgi
5. 控制命令
    * 查看支持命令列表： docker exec -it 容器名 control
    * 执行控命令：docker exec -it 容器名 control 命令
    * 本镜像支持的命名列表如下：
        ```
        start_celery_worker       启动celery-worker
        start_celery_beat         启动celery-beat
        start_celery_flower       启动celery-flower
        start_python_daemon       启动所有python-daemon开头的python后台进程
        restart_supervisord       重启supervisord,重新加载篇配置文件
        restart_celery_worker     重启celery-worker
        restart_celery_beat       重启celery-beat
        restart_celery_flower     重启celery-flower
        restart_python_daemon     重启所有python-daemon开头的python后台进程
        stop_celery_worker        停止celery-worker
        stop_celery_beat          停止celery-beat
        stop_celery_flower        停止celery-flower
        stop_python_daemon        停止所有python-daemon开头的python后台进程
        view_supervisor_status    查看view_supervisor_status
        ```
