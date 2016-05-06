# docker-drill

Runs Embedded Apache Drill 1.6.0 (16 March 2016) using Alpine JDK 8.

### Pull
```docker pull jimfdavies/drill```

### Run a container
```docker run -it jimfdavies/drill```

### Run the example query
```SELECT * FROM cp.`employee.json` LIMIT 5;```

### More
[Drill in 10 Minutes](https://drill.apache.org/docs/drill-in-10-minutes/)

Tip: It's ```!quit``` to exit
