IMAGE := alpine/fio
APP:="scripts/archlinux-req.sh"

deploy-kfx:
	bash scripts/deploy-kfx.sh

deploy-kafl:
	bash scripts/deploy-kafl.sh

push-image:
	docker push $(IMAGE)

.PHONY: deploy-vagrant deploy-libvirt deploy-zabbix push-image
