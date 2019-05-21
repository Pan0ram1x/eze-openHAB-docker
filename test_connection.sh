#!/usr/bin/env bash
echo "______________________________________________"
echo "| Testing connection from Influxdb to openHAB |"
echo "______________________________________________"
echo ""
sleep 1
docker exec -it influxdb /bin/ping openhab -c 4
echo ""
echo ""
echo "______________________________________________"
echo "| Testing connection from Influxdb to nodered |"
echo "______________________________________________"
echo ""
sleep 1
docker exec -it influxdb /bin/ping nodered -c 4
echo ""
echo ""
echo "______________________________________________"
echo "| Testing connection from Influxdb to grafana |"
echo "______________________________________________"
echo ""
echo ""
docker exec -it influxdb /bin/ping grafana -c 4
