# 北京工业大学硕士学位论文 LaTeX 模板（2026 整理版）

这是一个非官方模板，用于帮助北京工业大学硕士研究生使用 LaTeX 撰写学位论文。项目基于 [bjut-swift/BJUTLATEX](https://github.com/bjut-swift/BJUTLATEX) 整理，并结合 2026 年论文写作与提交实践进行了兼容性和排版更新。

> 学校规范可能调整。正式提交前，请务必以研究生院和所在学院发布的最新文件、格式检测要求及纸质样例为准。

## 快速开始

1. 安装较新的 TeX Live，并确保可以使用 XeLaTeX、BibTeX 和 latexmk。
2. 编辑 `ezinfo.cfg`，填写封面、扉页及声明页信息。
3. 从 `chapter/` 中的示例章节开始替换内容。
4. 将参考文献写入 `bib/references.bib`。
5. 双击 `build.bat`，或在项目目录运行 `latexmk thesis.tex`。

默认入口文件是 `thesis.tex`。模板包含中英文摘要、目录、正文、参考文献、附录、成果页和致谢的最小示例。

## 论文信息与学位类型

所有个人信息均集中在 `ezinfo.cfg`，类文件不再包含作者、导师、签名或日期。声明页默认保留空白签名栏。

`cheadertitle`、`ccoverdegree`、`ecoverdegree`、`cinnertitle` 和 `cstudytype` 可用于适配专业学位、学术学位和学习形式。当前示例使用中性“硕士学位论文”字样；请按照本人培养类型和学校最新样式填写。

## 字体

本仓库不分发宋体、黑体、楷体、仿宋或 Times New Roman 等字体文件。模板优先使用 `font/` 中由使用者自行提供的字体，其次使用系统字体，最后回退到 TeX Live 字体。文件名见 `font/README.md`。

Windows 上若已安装所需中文字体和 Times New Roman，通常无需额外操作。Overleaf 或 Linux 用户可使用 TeX Live 回退字体完成编译，但正式稿的字体外观应另行核对。

“数字、字母使用 Times New Roman”不能完整描述数学公式的字体需求：Word 的 OfficeMath 通常使用 Cambria Math，MathType 默认组合使用 Times New Roman、Symbol 和 MT Extra，本模板则使用 Times 风格的专用数学字体补全运算符和数学排版度量。正文西文字体与数学字体应分别核查；不同操作系统上的 Times 系列名称也可能不同。模板正文第二章给出了详细说明、横线字符辨析和公式注释对齐示例。

## 示例内容

仓库中的题目、作者、导师、学号、摘要、章节、图表、成果和致谢均为虚构占位内容，不来源于任何真实学位论文。使用时应完整替换。

## 相对原项目的主要整理

- 增加 Windows、本地字体和 TeX Live 字体的分级回退。
- 调整 Times 风格正文与数学字体的配合方式。
- 支持专业学位封面字段，并将学位类型相关文字配置化。
- 更新 GB/T 7714 数字顺序制和著者—出版年制样式文件。
- 优化图表浮动间距、题注间距、表格行距和多行公式间距。
- 增加附录、成果页、致谢以及自动编译示例。
- 清除类文件中的个人签名和日期硬编码。
- 提供不含真实研究数据的最小可编译示例。

更详细的来源与改动边界见 `docs/UPSTREAM.md` 和 `CHANGELOG.md`。

## 常见问题

- 目录或引用未更新：完整编译至少需要 XeLaTeX、BibTeX、XeLaTeX、XeLaTeX 四步，推荐直接使用 latexmk。
- 找不到图片：确认图片位于 `figure/`，并检查文件名大小写。
- 字体与学校样例不同：先核对 `font/README.md`，再确认学校允许使用的具体字体版本。
- 不需要某个章节：在 `thesis.tex` 中注释相应的 `\include` 行。

## 许可与致谢

上游 BJUTLATEX 使用 Apache License 2.0。本项目作为其衍生整理版本继续保留同一许可证及来源说明。感谢原作者 WangPeiKe 和 bjut-swift/BJUTLATEX 的贡献。
