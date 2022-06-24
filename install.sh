local_path=`pwd`
echo ${local_path}

mv ~/.tmux ~/.tmux_bak
mkdir -p ~/.tmux/plugins/

# tpm
unzip ${local_path}/package/tpm-master.zip -d ~/.tmux/plugins/
mv ~/.tmux/plugins/tpm-master ~/.tmux/plugins/tpm
# tmux-continuum
unzip ${local_path}/package/tmux-continuum-master.zip -d ~/.tmux/plugins/
mv ~/.tmux/plugins/tmux-continuum-master ~/.tmux/plugins/tmux-continuum
# tmux-resurrect
unzip ${local_path}/package/tmux-resurrect-master.zip -d ~/.tmux/plugins/
mv ~/.tmux/plugins/tmux-resurrect-master ~/.tmux/plugins/tmux-resurrect

# modify config
mv ~/.tmux.conf ~/.tmux.conf_bak
cp ${local_path}/.tmux.conf ~/.tmux.conf

# reload config
tmux new -s test &
tmux source ~/.tmux.conf

echo "请使用 tmux attach -t test 进入窗口"
echo "然后按Ctrl+b再按I（注意是大写的）安装插件"

echo "默认备份和恢复都是自动的（在指定时间间隔 15分钟 进行备份和在 重启后 进行恢复）
当然，你也可以直接调用 tmux-resurrect 来进行手动的备份与恢复，从而实现更灵活的操作：
- 手动备份tmux：Ctrl+b然后按Ctrl+s
- 手动恢复tmux：Ctrl+b然后按Ctrl+r"


