#!/bin/bash
export default_time_zone=America/Denver
export database_time_zone=America/Denver
# Reflection flags are required for internal module access
java --add-opens java.base/java.lang=ALL-UNNAMED \
     --add-opens java.base/java.util=ALL-UNNAMED \
     --add-opens java.base/java.time=ALL-UNNAMED \
     --add-opens java.base/java.nio=ALL-UNNAMED \
     -server \
     -Dmoqui.conf="conf/MoquiDevConf.xml" \
     -Dmoqui.runtime="runtime" \
     -Xmx4096m \
     -Duser.timezone="America/Denver" \
     -Ddefault_time_zone="America/Denver" \
     -Dmoqui.logger.level.xml_action="info" \
     -jar moqui.war
