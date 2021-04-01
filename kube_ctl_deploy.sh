kubectl run --generator=run-pod/v1 nginx --image=nginx
# expose the pod as a service, giving us access to it
kubectl expose pod nginx --port 80 --target-port 80 --type LoadBalancer
# wait for an ip address to be provisioned
ip_address='<pending>'
while [[ "${ip_address}" == "<pending>" ]]; do
    ip_address=$(kubectl get svc | grep -w nginx | awk '{print $4}')
    sleep 5
    echo "waiting for ip address to be provisioned..."
done
echo "http://${ip_address}"