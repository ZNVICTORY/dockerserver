# 制定node镜像版本号
FROM node:10-alpine
#移动当前目录下面的文件到到 app目录下
ADD . /app/
# 进入到app目录下， 类似 cd
WORKDIR /app
# 安装依赖
RUN npm install
# 对外暴露的端口
EXPOSE 3000
# 程序启动脚本# 容器启动时执行的命令，类似npm run start 使用双引号
CMD ["npm", "start"]
