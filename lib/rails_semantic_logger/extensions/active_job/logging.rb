# Patch ActiveJob logger
require 'active_job/logging'

module SemanticLoggerExtension
  private

  def tag_logger(*tags, &block)
    logger.tagged(*tags, &block)
  end
end

ActiveJob::Logging.send :include, SemanticLogger::Loggable
ActiveJob::Logging.send :prepend, SemanticLoggerExtension
