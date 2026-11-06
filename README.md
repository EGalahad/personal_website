# Personal website

个人主页源码，使用 Vue、Vuetify 和 Vite。线上地址：https://haoyangweng.pages.dev/。

## 修改内容

- 主页、论文和项目列表：`src/views/Home.vue`。
- 图片和视频：`src/assets/images/`。
- 博客文章及资源：`public/blog/`。
- 全局样式：`styles/global.css`。

## 本地开发与构建

使用 Node.js 20 或更高版本：

```bash
npm ci
npm run dev
```

运行 `npm run build` 生成 `dist/`。该目录是本地构建产物，不需要另行提交。

请提交 `package-lock.json`；修改依赖后用 `npm install` 更新锁文件。

## 自动发布

推送源码后，仓库 Webhook 会通知 Cloudflare Pages。汇总仓库 [EGalahad/website](https://github.com/EGalahad/website) 的脚本会拉取本仓库 main 分支，并与 sim2real、boltrt 文档一起构建、发布：

- 本仓库的 `dist/` → 网站根目录。
- sim2real 文档 → `/sim2real/`。
- boltrt 文档 → `/boltrt/`。

不再需要构建后推送 personal_website-dist，也不依赖 GitHub Actions。Cloudflare 的部署状态及三个源码提交号可在 Pages 构建日志中查看。任一构建失败会保留上一次成功的线上版本。
