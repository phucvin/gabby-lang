cd ..

pip install -r requirements.txt

python run.py test/loops.test > test/loops.ll

llc test/loops.ll

gcc test/loops.s -o test/loops

./loops