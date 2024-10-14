


# Trivy kurulumu
sudo apt-get install wget apt-transport-https gnupg lsb-release -y
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list

sudo apt-get update
sudo apt-get install trivy -y




# Jenkins kurulumu
curl -s https://raw.githubusercontent.com/hakanbayraktar/ibb-tech/refs/heads/main/devops/jenkins/install/jenkins-install.sh | sudo bash






# Kubernetes kurulumu
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl







#Docker install

curl -s https://raw.githubusercontent.com/hakanbayraktar/ibb-tech/refs/heads/main/docker/ubuntu-24-docker-install.sh | sudo bash
