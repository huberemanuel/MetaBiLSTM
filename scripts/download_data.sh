# wget -P data/ https://github.com/UniversalDependencies/UD_Russian-SynTagRus/raw/master/ru_syntagrus-ud-train-a.conllu
# Bosque
wget -P data/ https://github.com/UniversalDependencies/UD_Portuguese-Bosque/raw/master/pt_bosque-ud-train.conllu
wget -P data/ https://github.com/UniversalDependencies/UD_Portuguese-Bosque/raw/master/pt_bosque-ud-dev.conllu
wget -P data/ https://github.com/UniversalDependencies/UD_Portuguese-Bosque/raw/master/pt_bosque-ud-test.conllu
cat data/pt_bosque-ud-dev.conllu >> data/pt_bosque-ud-train.conllu
# Porttinari-base
wget -P data/ https://github.com/huberemanuel/portinari-base/raw/master/porttinari-base-train.conllu
wget -P data/ https://github.com/huberemanuel/portinari-base/raw/master/porttinari-base-test.conllu
# or any other desired embeddings in default format
# wget -P data/ http://vectors.nlpl.eu/repository/20/182.zip
# unzip data/182.zip -d data/embeddings

# Colab
# NILC embeddings
# wget -O data/skip_s300.zip http://143.107.183.175:22980/download.php?file=embeddings/word2vec/skip_s300.zip
cp /content/drive/MyDrive/Colab\ Notebooks/resources/skip_s300.zip data/
unzip data/skip_s300.zip -d data/embeddings
# CONLL 20017 Shared Task Embeddings
# https://lindat.mff.cuni.cz/repository/xmlui/bitstream/handle/11234/1-1989/word-embeddings-conll17.tar?sequence=9&isAllowed=y
cp /content/drive/MyDrive/Colab\ Notebooks/resources/word-embeddings-conll17/Portuguese/pt.vectors.xz data/embeddings
xzcat data/embeddings/pt.vectors.xz > data/embeddings/pt.vectors.txt
