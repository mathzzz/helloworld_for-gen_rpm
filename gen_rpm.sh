# 安装工具
# yum install rpm-build rpm-devel rpmdevtools tree 

# 在~/rpmbuild目录下生成 BUILD SOURCES RPMS SPECS ... 等目录
rpmdev-setuptree

# 将源码压缩到 ~/rpmbuild/SOURCES
 tar -czf helloworld-1.0.0.tar.gz helloworld-1.0.0
 mv helloworld-1.0.0.tar.gz ~/rpmbuild/SOURCES

# 生成spec模板
 cd ~/rpmbuild/SPECS
 rpmdev-newspec helloworld.spec
 cd -

# 修改模板
 cd ~/rpmbuild/SPECS
 mv helloworld.spec helloworld.spec.raw
 cp $OLDPWD/helloworld.spec  helloworld.spec
 cd -

# 打包
 cd ~/rpmbuild
 rpmbuild -ba SPECS/helloworld.spec
 cd -

# 查看rpm 包
 tree ~/rpmbuild/


# rpmbuild 目录结构文件简介
#  BUILD是编译rpm包的临时目录
#  BUILDROOT是最后生成rpm包的临时安装目录
#  RPMS存放最终生成的rpm二进制包
#  SOURCES是源代码(.tar.gz)存放目录
#  SPECS用来存放spec文件
#  SRPMS存放最终生成的rpm源码包
