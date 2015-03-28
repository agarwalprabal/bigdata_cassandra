import time
from cassandra.cluster import Cluster
cluster = Cluster()
session = cluster.connect('bigdata_exp')
session.execute
start_time = time.time()
session.execute("select revenue from events where state = 'Uttar Pradesh'")
print(time.time()-start_time)
