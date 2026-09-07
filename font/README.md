# 可选字体目录

为避免字体再分发的版权风险，本仓库不附带宋体、黑体、楷体、仿宋或 Times New Roman。

模板会优先读取本目录中的以下文件：

- `SimSun.ttc`
- `SimHei.ttf`，可选 `SimHeiBold.ttf`
- `Kaiti.ttf`
- `FangSong.ttf`
- `TimesNewRoman.ttf`
- `TimesNewRomanBold.ttf`
- `TimesNewRomanItalic.ttf`
- `TimesNewRomanBoldItalic.ttf`

未提供时，模板会依次尝试系统字体和 TeX Live 自带的可用字体。正式提交前请根据学校最新规范核对字体。

字体二进制文件已由根目录的 `.gitignore` 排除。这样本地可以使用学校要求的字体编译，同时避免将可能受许可限制的字体重新分发到公开仓库。请从拥有合法许可的 Windows 安装或个人备份中取得这些文件；不要从不明网站下载。

可用下面的命令确认最终 PDF 实际嵌入的字体：

```powershell
pdffonts build/thesis.pdf
```
