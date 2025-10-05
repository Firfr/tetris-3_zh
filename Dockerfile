FROM lipanski/docker-static-website:2.6.0

# 静态文件路径 /home/static
COPY . /home/static/

ENTRYPOINT ["/busybox-httpd", "-f", "-v"]
CMD [ "-p", "5154" ]

# 暴露端口
EXPOSE 5154

LABEL 原项目地址="https://github.com/musthofa-kamaluddin/Tetris"
LABEL 镜像制作者="https://space.bilibili.com/17547201"
LABEL GitHub主页="https://github.com/Firfr/tetris-3_zh"
LABEL Gitee主页="https://gitee.com/firfe/tetris-3_zh"

# docker buildx build --platform linux/amd64 --tag firfe/tetris-3_zh:2025.10.05 --output type=docker .
# docker buildx build --platform linux/arm64 --tag firfe/tetris-3_zh:2025.10.05-arm64 --output type=docker .

