DEVICE=cuda

init:
	pip install -r requirements.txt
	pip install -e .
	chmod +x scripts/download_data.sh

download_data:
	./scripts/download_data.sh

train-porttinari:
	python src/meta_bilstm/bin/train_model.py \
		-t data/pt_porttinari-ud-train.conllu \
		-v data/pt_porttinari-ud-dev.conllu \
		-d $(DEVICE) \
		-e data/embeddings/skip_s300.txt

train-bosque:
	python src/meta_bilstm/bin/train_model.py \
		-t data/pt_bosque-ud-train.conllu \
		-v data/pt_bosque-ud-test.conllu \
		-d $(DEVICE)
