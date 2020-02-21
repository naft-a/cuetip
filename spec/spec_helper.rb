# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require 'active_record'
ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ':memory:'

# Load up the migrations
ActiveRecord::Migrator.migrate(File.expand_path('../db/migrate', __dir__))

require 'cuetip'

# Disable logging to STDOUT
Cuetip.logger.level = Logger::UNKNOWN
