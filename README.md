# personal_website-vue 维护说明

这个仓库是源码仓库（`personal_website-vue`），`dist/` 是独立的发布仓库（remote: `git@github.com:EGalahad/personal_website-dist.git`）。

## 1) 新增一个项目要改哪些文件

最常见需要修改这些位置：

- `src/views/Home.vue`
  - 在 `const projects = [...]` 中新增一个对象：
    - `title`
    - `summary`
    - `image`
    - `badges`
    - `links`
- `src/assets/images/projects/`
  - 放项目封面图或视频（当前支持 `.png/.jpg/.jpeg/.mp4`）
- `styles/global.css`（可选）
  - 如果要改样式、间距、字体等

如果是新增论文条目，则改 `src/views/Home.vue` 里的 `publications` 数组，并把素材放到 `src/assets/images/publications/`。

## 2) 本地开发预览

```bash
npm install
npm run dev
```

默认会启动 Vite 开发服务（配置在 `vite.config.js`）。

## 3) 构建发布文件

```bash
npm run build
```

执行后会重新生成 `dist/` 内容（这部分是要发布到 `personal_website-dist` 的）。

## 4) 提交源码仓库（当前仓库）

在项目根目录执行：

```bash
git add src styles vite.config.js package.json package-lock.json README.md
git commit -m "update website content"
git push origin main
```

如果你改动了其他文件，把它们也加上。

## 5) 提交发布仓库（dist）

```bash
cd dist
git add -A
git commit -m "deploy: rebuild site"
git push origin main
cd ..
```

## 6) 推荐的完整流程（每次更新）

```bash
# 1) 修改源码（主要是 src/views/Home.vue + 素材文件）

# 2) 本地检查
npm run dev

# 3) 构建
npm run build

# 4) 提交源码仓库
git add -A
git commit -m "update website"
git push origin main

# 5) 提交 dist 发布仓库
cd dist
git add -A
git commit -m "deploy: update site"
git push origin main
cd ..
```

## 常见问题

- `git add -A` 后没有 `dist` 变化：
  - 正常，因为根仓库 `.gitignore` 已忽略 `dist/`，需要进入 `dist/` 单独提交。
- `dist/` 提交失败：
  - 先在 `dist/` 下执行 `git remote -v`，确认 remote 还是 `personal_website-dist`。
- 命令写成 `puhs`：
  - 正确命令是 `push`。
