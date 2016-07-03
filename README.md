个人简历
====

运行环境
----

*   ubuntu 14.04/64位
*   texlive 2013

安装latex及相关软件
----

```
sudo apt-get install texlive-latex-base
sudo apt-get install texlive-latex-extra
sudo apt-get install latex-cjk-chinese # 支持中文
sudo apt-get install texlive-fonts-recommended texlive-fonts-extra #安装字体
sudo apt-get install texlive-xetex
sudo apt-get install texlive-lang-cjk
```

Windows中文字体
----

安装Windows字体

```
mkdir -p /usr/share/fonts/truetype/windows
sudo cp fonts/* /usr/share/fonts/truetype/windows
cd /usr/share/fonts/truetype/windows
sudo chmod 664 *
sudo mkfontdir
cd .. && sudo fc-cache
```

查看系统中的中文字体

```
fc-list :lang=zh 
```

配置texlive Winndows字体: 向/usr/share/texlive/texmf-dist/tex/latex/ctex/fontset/ctex-xecjk-winfonts.def添加如下内容

```
\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi_GB2312}
  {SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{FangSong_GB2312}
 
\setCJKfamilyfont{zhsong}{SimSun}
\setCJKfamilyfont{zhhei}{SimHei}
\setCJKfamilyfont{zhkai}{KaiTi_GB2312}
\setCJKfamilyfont{zhfs}{FangSong_GB2312}
 
 
\newcommand*{\songti}{\CJKfamily{zhsong}} % 宋体
\newcommand*{\heiti}{\CJKfamily{zhhei}}   % 黑体
\newcommand*{\kaishu}{\CJKfamily{zhkai}}  % 楷书
\newcommand*{\fangsong}{\CJKfamily{zhfs}} % 仿宋
```

*   [如何在linux下配置完整的latex中文支持](http://asc.2dark.org/node/129)
*   [Ubuntu下部署Latex编译环境](http://ptbsare.org/2014/05/12/ubuntu%E4%B8%8B%E9%83%A8%E7%BD%B2latex%E7%BC%96%E8%AF%91%E7%8E%AF%E5%A2%83/)
*   [LaTeX中文排版（使用XeTeX）](http://linux-wiki.cn/wiki/zh-hans/LaTeX%E4%B8%AD%E6%96%87%E6%8E%92%E7%89%88%EF%BC%88%E4%BD%BF%E7%94%A8XeTeX%EF%BC%89)

编译生成简历
----

生成简历

```
make all
```

清除简历

```
make clean
```

常见问题及解决方法
----

### 个人简历使用的模板

使用moderncv，从[官网](http://www.ctan.org/tex-archive/macros/latex/contrib/moderncv/)可以下载获得

### moderncv模板的使用

[moderncv 的笔记（支持中文）](https://www.xiangsun.org/tex/notes-on-moderncv)
