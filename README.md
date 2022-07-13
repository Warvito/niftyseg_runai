# niftyseg_runai
Example of NiftySeg image to execute jobs in the RunAI system

Create docker image and push it to the private registry using:

```
bash create_docker_image.sh  
```

Then, submit jobs to runai using something like cluster/runai/submit_example.sh . The NiftySeg commands can be defined at the 
```--command -- niftyseg_command param1 param2...``` part, or create a complex .sh file and execute it with ```--command -- bash my_bash_script param1 param2...```

