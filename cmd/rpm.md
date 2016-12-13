# rpm

## list all package

```bash
rpm -qa --qf="%{NAME}.%{ARCH}\n" | sort
```
