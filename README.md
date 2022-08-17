# Kubernetes

## Basics

- What is Kubernetes? (Greek for Captain)
Open source container orchestration tool developed by Google

- What problems does Kubernetes solve?
Complement microservice technology

- What features orchestration tools offer?
High availability
Scalability
Disaster Recovery

## Components
- Node - VM
- Pod 
    - Abstraction over containers 
    - Usually 1 app per pod
    - Each pod has its IP Address
    - Ephemeral
    - Example pods, DB Pod/App Pod
- Container
    - Docker(Any container platform)
- Service:
    - Permanent IP Address
    - Allows persistance for pods (pod dies but service IP address remains static)
    - External services/Internal services - external services look like IP:Port combinations
    - Ingress service for DNS inside kubernetes i.e. map 192.168.0.0:8080 -> https://my-app.com
- ConfigMap/Secret:
    - Pods communicate with eachother via service
    - Secret used to store credentials for services etc. DB (Encrypted)
- Data Storage
    - Volumes, attaches physical storage to pod
    - Can be local to K8 or remote storage sources
    - K8's do not manage data persistance on their own
- Deployment
    - Essentially a load balancer of sorts
    - Your pods are spread across different nodes firstly
    - Redirects traffic for service X, to different replicas of service X
    - If X-1 fails, then X-2, X-3...X-N may take over
    - Stateless apps only
- StatefulSet
    - Same as above but caters for state
    - Useful for databases to avoid data inconsistencies


## Worker machine in K8 Cluster

- Container runtime (each node has one) 
- Kublet (each node has one)
- Kube Proxy (each node has one)



## Intersting resources
- The Illustrated Children's Guide to Kubernetes
https://www.youtube.com/watch?v=4ht22ReBjno&ab_channel=Deis%2CInc.

- Kubernetes Tutorial for Beginners [FULL COURSE in 4 Hours]
https://www.youtube.com/watch?v=X48VuDVv0do&ab_channel=TechWorldwithNana