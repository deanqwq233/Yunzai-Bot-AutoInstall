echo "��ӭʹ������һ����װ�ű�Termux�� by�������ɳ���"
echo "�����������Ҫ������������������س�������Ĭ���������룡"
echo "�������ʾ[Y/n]��ֱ�Ӱ��س������[y/N]������Y��س���"
apt update
apt install npm -y
npm install n -g --registry=http://registry.npmmirror.com
n latest
apt install redis -y
apt install git -y
cd
git clone --depth=1 -b main https://gitee.com/Le-niao/Yunzai-Bot.git
cd Yunzai-Bot
npm install pnpm -g --registry=http://registry.npmmirror.com
pnpm install -P
git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
pnpm install --filter=guoba-plugin
git clone --depth=1 https://gitee.com/Nwflower/auto-plugin.git ./plugins/auto-plugin/
git clone --depth=1 https://gitee.com/yeyang52/yenai-plugin.git ./plugins/yenai-plugin
pnpm add systeminformation -w
echo "��װ��ɣ�"
echo "�պ���������һ��Ҫ��ȷ���������ļ�����ִ��node app��"