FROM allomov/cf-example-ruby-dashing

# FROM allomov/ruby:2.1.5

# ADD . /dashing
# WORKDIR /dashing

# RUN ["bundle", "install"]

RUN ["bundle", "update", "backports"]
ENTRYPOINT ["bundle", "exec", "dashing", "start", "-p", "$PORT"]
