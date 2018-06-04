
# inspired by
# https://hub.docker.com/r/couchbase/sync-gateway/~/dockerfile/

FROM centos:centos7

ENV PATH $PATH:/opt/couchbase-sync-gateway/bin

# Install dependencies:
#  wget: for downloading Sync Gateway package installer
RUN yum -y update && \
yum install -y \
wget && \
yum clean all

# Install Sync Gateway
RUN wget https://packages.couchbase.com/releases/couchbase-sync-gateway/2.0.0-beta2/couchbase-sync-gateway-enterprise_2.0.0-beta2_x86_64.rpm && \
rpm -i couchbase-sync-gateway-enterprise_2.0.0-beta2_x86_64.rpm && \
rm couchbase-sync-gateway-enterprise_2.0.0-beta2_x86_64.rpm

# Create directory where the default config stores memory snapshots to disk
RUN mkdir /opt/couchbase-sync-gateway/data

# copy the default config into the container
COPY sync-gateway-config.json opt/sync-gateway-config.json

# Invoke the sync_gateway executable by default
ENTRYPOINT ["sync_gateway"]

# If user doesn't specify any args, use the default config
CMD ["opt/sync-gateway-config.json"]

# Expose ports
EXPOSE 4984
