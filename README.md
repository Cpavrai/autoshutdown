# AutoShutdown

This repository gives you instruction to follow for having an auto-shutdown instance after a defined duration without any ssh connection.

## 1: Shell script

You have to put it somewhere in your server, reachable and executable.

> By default, it is set to auto shutdown instance after 3 hours (hence it is set 10800 in the condition), but you can set it diffrerently

## 2: Service

You will need here to set up the service unit and timer. Follow these instructions:

### Service 🛎️
```
sudo systemctl edit autoshutdown.service --full --force
```
and add in the editor the content of autoshutdown.service.

### Timer ⏰
```
sudo systemctl edit autoshutdown.timer --full --force
```
and add in the editor the content of autoshutdown.timer.

### Activation 🏁
```
sudo systemctl enable autoshutdown.timer
sudo systemctl start autoshutdown.timer
sudo systemctl status autoshutdown.timer
```

Check the last command answer if it is all great.

## That's all! 🎉