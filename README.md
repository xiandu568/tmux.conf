# frank Tmux Configuration

模块化的 tmux 配置，使用 [TPM](https://github.com/tmux-plugins/tpm) 管理插件，[Dracula](https://github.com/dracula/tmux) 主题。

## 文件结构

```
tmux.conf    主配置（基础设置、模式、终端选项）
├── tmux.sh      启动脚本（source 子配置、初始化 TPM）
├── key.tmux     快捷键配置（prefix、分屏、面板选择/缩放）
├── theme.tmux   主题与显示配置（状态栏、历史行数、消息样式）
├── hook.tmux    钩子配置
├── tpm.tmux     插件声明（TPM 插件列表 + Dracula 主题选项）
└── plugins/     插件目录（由 TPM 自动管理，不纳入版本控制）
```

## 安装

```bash
git clone <仓库地址> ~/.config/tmux
ln -sf ~/.config/tmux/tmux.conf ~/.tmux.conf
```

启动 tmux 即可，`tmux.conf` 会自动尝试加载 `tmux.sh`，并在首次缺少 TPM 时自动安装 TPM 和插件：

```bash
tmux new -s work
```

## 插件管理快捷键

| 快捷键 | 功能 |
|--------|------|
| `Ctrl-u I` | 安装插件 |
| `Ctrl-u U` | 更新插件 |
| `Ctrl-u Alt-u` | 清理未声明的插件 |

## 自定义快捷键

Prefix 键为 `Ctrl-u`（替代默认的 `Ctrl-b`）。


### 分屏

| 快捷键 | 功能 |
|--------|------|
| `prefix \` ` | 右侧分屏 |
| `prefix \|` | 左侧分屏 |
| `prefix -` | 下方分屏 |
| `prefix _` | 上方分屏 |
| `prefix "` | 右侧分屏（全高） |
| `prefix %` | 下方分屏（全宽） |

### 面板导航（Vim 风格）

| 快捷键 | 功能 |
|--------|------|
| `prefix h` | 选择左边面板 |
| `prefix j` | 选择下边面板 |
| `prefix k` | 选择上边面板 |
| `prefix l` | 选择右边面板 |
| `prefix H/J/K/L` | 缩放面板（左/下/上/右 5 单位） |

### 其他

| 快捷键 | 功能 |
|--------|------|
| `prefix z` | 面板全屏切换 |
| `prefix s` | 切换面板同步输入 |
| `prefix S` | 会话/窗口选择树 |
| `prefix Q` | 捕获面板内容到 /tmp/tmux.pane.txt |
| `prefix R` | 重新加载配置 |
| `prefix T` | 打开弹窗终端 |
| `Ctrl-l` | 清屏并清除历史 |

## 插件列表

| 插件 | 功能 |
|------|------|
| [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible) | 基础 sensible 配置 |
| [tmux-better-mouse-mode](https://github.com/nhdaly/tmux-better-mouse-mode) | 增强鼠标模式 |
| [tmux-mighty-scroll](https://github.com/noscript/tmux-mighty-scroll) | 改进滚动体验 |
| [extrakto](https://github.com/laktak/extrakto) | 面板内容提取与复制 |
| [dracula/tmux](https://github.com/dracula/tmux) | Dracula 主题（天气、CPU、内存、时间） |
| [tmux-toggle-popup](https://github.com/loichyan/tmux-toggle-popup) | 弹窗切换 |
| [tmux-grimoire](https://github.com/navahas/tmux-grimoire) | 命令速查 |
| [tmux-floax](https://github.com/omerxx/tmux-floax) | 浮动窗口管理 |



## 新机器部署

只需 clone + 链接 + 启动，首次会自动安装 TPM 和插件：

```bash
git clone <仓库地址> ~/.config/tmux
ln -sf ~/.config/tmux/tmux.conf ~/.tmux.conf
tmux new -s work
```

如自动安装未生效，在 tmux 内按 `Ctrl-u I` 手动触发。
