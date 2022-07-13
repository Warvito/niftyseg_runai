runai submit \
  --name example-niftyseg \
  --image 10.202.67.207:5000/wds20:niftyseg_runai \
  --backoff-limit 0 \
  --gpu 0 \
  --cpu 4 \
  --large-shm \
  --run-as-user \
  --host-ipc \
  --project wds20 \
  --volume /nfs/home/wds20/projects/niftyseg_runai/:/project/ \
  --command -- sleep infinity

