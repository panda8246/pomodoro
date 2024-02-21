:: 创建虚拟环境
py -3 -m venv .venv || exit /b
:: 进入化虚拟环境
CALL .\.venv\Scripts\activate || exit /b
:: 已经是虚拟环境的python了，在虚拟环境中安装配置的依赖项
python -m ensurepip
python -m pip install --upgrade pip
python -m pip install -e ".[dev]"
