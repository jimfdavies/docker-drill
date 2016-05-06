# docker-drill

Runs Embedded Apache Drill 1.6.0 (16 March 2016) using Alpine JDK 8.

### Pull
```docker pull jimfdavies/drill```

### Run a container
```docker run -it jimfdavies/drill```

### Run the example query
```SELECT * FROM cp.`employee.json` LIMIT 5;```

### Read more
[Drill in 10 Minutes](https://drill.apache.org/docs/drill-in-10-minutes/)

Tip: ```!quit``` to exit

### Use the Web UI
```curl http://$(docker-machine ip default):8047/status```

Tip: You may need to set port forwarding if using VirtualBox.

### Access your own data file
Create a some test data in ```~/test-data/test.json``` then mount that volume in the container.
```docker run -it -p 8047:8047 -v ~/test-data:/data jimfdavies/drill```
At the Drill command line or in the Web UI, use the File system Storage plugin to find your file from ```/```.
```SELECT * FROM dfs.`/data/test.json`;```
