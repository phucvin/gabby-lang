cd ..

pip install -r requirements.txt

python run.py test/loops.test > test/loops.ll

remove debug logs in loops.ll

llc test/loops.ll

gcc test/loops.s -o test/loops

./loops

cd ..

git clone https://github.com/LanceMoe/pyjiting

pip install -r requirements.txt

remove "import llvmlite.llvmpy.core" and its usage since it's deprecated
(https://llvmlite.readthedocs.io/en/latest/user-guide/deprecation.html#deprecation-of-llvmlite-llvmpy-module)