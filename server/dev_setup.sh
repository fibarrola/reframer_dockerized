# conda deactivate
conda env remove -n aidraw
conda update -n base -c defaults conda
conda env create -n aidraw -f environment.yml
conda activate aidraw

pip3 install -r requirements.txt

cd src/
rm -rf diffvg
rm -rf results
rm -rf tmp
mkdir results
mkdir tmp

pip3 install -r requirements.txt
cd src
git clone https://github.com/BachiLi/diffvg
cd diffvg
git submodule update --init --recursive
python3 setup.py install
cd ../..

# sudo add-apt-repository ppa:ubuntu-toolchain-r/test
# sudo apt-get update
# sudo apt-get install libstdc++6-4.7-dbg