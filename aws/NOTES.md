```sh
#Init project
serverless
```

> Note: Adjust http lambda to log something

```sh
#View logs
serverless logs -f hello -t
```

```yml
#http event
events: # All events associated with this function
  - http:
      path: /
      method: get
```

```yml
#cloud watch log event
events:
  - cloudwatchLog: "/aws/lambda/useless-app-dev-hello"
```

[See All Events here](https://serverless.com/framework/docs/providers/aws/events/)
