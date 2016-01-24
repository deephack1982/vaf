json.array!(@action_reports) do |action_report|
  json.extract! action_report, :id, :pilot_id, :airframe_id, :tasking_id, :hours, :takeoffs, :landings, :outcome, :aa_kills, :ag_kills, :notes, :status
  json.url action_report_url(action_report, format: :json)
end
