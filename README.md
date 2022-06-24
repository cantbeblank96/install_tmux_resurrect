# tmux备份（离线安装）

## 基本流程：

首先安装tmux的插件管理器：[tmux plugin manager](https://github.com/tmux-plugins/tpm)，然后安装以下两个插件：

- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)：备份与恢复；Restore tmux environment after system restart。
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)：用于定时调用tmux-resurrect进行自动备份，并在开机时调用tmux-resurrect进行自动恢复。

## 安装方法

下载该项目，进入项目文件夹下，执行命令：

```shell
cd ./install_tmux_resurrect
bash install.sh
```

按照提示进行操作：

```shell
echo "请使用 tmux attach -t test 进入窗口"
echo "然后按Ctrl+b再按I（注意是大写的）安装插件"

echo "默认备份和恢复都是自动的（在指定时间间隔 15分钟 进行备份和在 重启后 进行恢复）
当然，你也可以直接调用 tmux-resurrect 来进行手动的备份与恢复，从而实现更灵活的操作：
- 手动备份tmux：Ctrl+b然后按Ctrl+s
- 手动恢复tmux：Ctrl+b然后按Ctrl+r"
```

即可完成安装。

## 更多

请参考：
