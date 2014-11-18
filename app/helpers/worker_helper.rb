module WorkerHelper
  def worker_type_options
    %w(Manager Employee Contractor).map { |type| [type, type] }
  end
end
