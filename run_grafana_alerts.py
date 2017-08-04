import time
import random
import os
import schedule
import grafana_alerts


if __name__ == '__main__':
    schedule.every(os.environ.get("INTERVAL_SECOND_TO_RUN", 10)).seconds.do(grafana_alerts.main)

    while True:
        try:
            schedule.run_pending()
        except:
            print "Caught exception! Reconnecting..."
            time.sleep(random.randrange(10))
