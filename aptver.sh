echo "欢迎使用云崽一键安装脚本apt版 by物理伴你成长！"
echo "过程中如果需要您输入密码就请输入后回车！密码默认隐藏输入！"
echo "如果有提示[Y/n]请直接按回车，如果[y/N]请输入Y后回车！"
sudo apt update
sudo apt install npm -y
sudo npm install n -g --registry=http://registry.npmmirror.com
sudo n latest
sudo apt install redis -y
sudo apt install git -y
cd ~
git clone --depth=1 -b main https://gitee.com/Le-niao/Yunzai-Bot.git
cd ~/Yunzai-Bot
sudo npm install pnpm -g --registry=http://registry.npmmirror.com
sudo pnpm install -P
git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
sudo pnpm install --filter=guoba-plugin
git clone --depth=1 https://gitee.com/Nwflower/auto-plugin.git ./plugins/auto-plugin/
git clone --depth=1 https://gitee.com/yeyang52/yenai-plugin.git ./plugins/yenai-plugin
sudo pnpm add systeminformation -w
echo "安装完成！"
echo "日后启动云崽一定要先确定在云崽文件夹内执行node app！"