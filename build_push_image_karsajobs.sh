# Melakukan build docker dengan nama ghcr.io/stazyu/karsajobs dan tag latest
docker build -t ghcr.io/stazyu/karsajobs:latest .
# Login ke Github Packages sebelum melakukan push image
# Memasukan token ke dalam environment biar lebih aman saat login ke Github Packages
# export CR_PAT=TOKEN
echo $CR_PAT | docker login ghcr.io -u Stazyu --password-stdin
# Mengunggah Image ke Github Packages
docker push ghcr.io/stazyu/karsajobs:latest