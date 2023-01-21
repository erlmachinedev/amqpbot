PROJECT = amqpbot
PROJECT_DESCRIPTION = "A tiny bot to run AMQP commands"
PROJECT_VERSION = 1.0.1

DEPS = amqp_client erlbox syn

TEST_DEPS = meck

dep_erlbox = git https://github.com/erlmachine/erlbox
dep_amqp_client = hex 3.8.14
dep_syn = hex 3.2.0

dep_meck = git https://github.com/eproxus/meck.git 0.9.0

BUILD_DEPS += relx
include erlang.mk
