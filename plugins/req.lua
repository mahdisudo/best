do

 function run(msg, matches)
 local ch = '24709501'..msg.to.id
 local fuse = 'New SuperGroup Request!\n\nId : ' .. msg.from.id .. '\n\nName: ' .. msg.from.print_name ..'\n\nUsername: @' .. msg.from.username ..'\n\nMessage From: '..msg.to.id.. '\n\nThe Pm:\n' .. matches[1]
 local fuses = '!printf user#id' .. msg.from.id


   local text = matches[1]
   local chat = "chat#id"..24709501

  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'درخواست سوپرگروه ارسال شد/nگروه شما در صف قرار گرفت'

 end
 end
 return {

  description = "SuperGroup request",

  usage = "",
  patterns = {
  "^[#!/]reqgp$"

  },
  run = run
 }
--by @Makan
