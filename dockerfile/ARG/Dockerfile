ARG version
FROM almalinux:${version:-8}
RUN echo "The currernt version : ${version}"
# before mentioned ARG varialbes will not reflect after FROM command"

# after mentioned ARG variables will not reflect before FROM command
# :- (default variable) you can change at image creation using --build-arg {ARN_name}
ARG course
RUN echo "The currernt course is: ${course:-DevOps}"
