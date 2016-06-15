local api_key = '233412109:AAHReUp8w8rRClg2rUeCd3cze0gEqeQh6vc' --توکن ربات خود را اینجا قرار دهید 
local function run(msg,matches) 
    local text = 'ربات اینلاین دیجی مهدی' 
    local channel_id = get_receiver_api(msg) 
    local link_text = 'ربات پیامرسان' 
    local data = load_data(_config.moderation.data) 
    local link = 'https://telegram.me/sudome'
    local keyboard = '{"inline_keyboard":[[{"text":"'..link_text..'","url":"'..link..'"}],[{"text":"Join to heavystyle Channel","url":"https://telegram.me/heavystyle"}],[{"text":"Developer","url":"http://telegram.me/sudome"},{"text":"Dev Bot","url":"http://telegram.me/sudome"}]]}' --به دلخواه متن ها را تغییر دهید 
    local url = 'https://api.telegram.org/bot'..api_key..'/sendMessage?chat_id='..channel_id..'&parse_mode=Markdown&text='..text..'&disable_web_page_preview=true&reply_markup='..keyboard 
    local dat, res = https.request(url) 
      if res == 400 then 
         reply_msg(msg.id, 'Error !', ok_cb, true) 
         else 
         reply_msg(msg.id, ok_cb, true) 
      end 
      end 
  return { 
      patterns = { 
          "^!start" 
          }, 
      run = run 
  } 
