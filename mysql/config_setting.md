- Reference: [why-does-mysql-say-im-out-of-memory](https://dba.stackexchange.com/questions/1927/why-does-mysql-say-im-out-of-memory)

```
Maximum MySQL Memory Usage =
	innodb_buffer_pool_size +
	key_buffer_size + 
	((read_buffer_size + 
	  read_rnd_buffer_size +
	  sort_buffer_size + 
	  join_buffer_size) * max_connections)

These variables are the ones you need to adjust until the formula yields 80% of installed RAM or less.
sort_buffer_size
read_buffer_size
read_rnd_buffer_size
join_buffer_size
max_connections
```
