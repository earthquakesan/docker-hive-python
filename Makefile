default:
	docker build -t python-hive .

run:
	docker run --rm -it --net hadoop --name python-hive python-hive
