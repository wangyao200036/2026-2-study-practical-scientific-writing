.PHONY: help prepare clean

help:
@echo "可用命令："
@echo "  make help     - 显示帮助"
@echo "  make prepare  - 初始化课程结构"
@echo "  make clean    - 清理临时文件"

prepare:
@echo "正在初始化课程结构..."
@mkdir -p labs/lab01 labs/lab02
@mkdir -p group-project personal-project external-course
@mkdir -p release
@echo "完成！"
@echo "课程名称：$$(cat COURSE 2>/dev/null || echo '未设置')"

clean:
@echo "清理 LaTeX 临时文件..."
@find . -type f \( -name "*.aux" -o -name "*.log" -o -name "*.out" \) -delete
@echo "清理完成！"
