function run(msg, matches)
local url , res = http.request('http://www.omdbapi.com/?t='..matches[2])
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = 'Title : '..jdat.Title..'\nYear : '..jdat.Year..'\nRuntime : '..jdat.Runtime..'\nGenre : '..jdat.Genre..'\nLanguage : '..jdat.Language..'\n\n@Mehdi_Morphin'
local sticker = jdat.Poster
download_to_file(sticker,'sticker.webp')
 if jdat.Poster then
    local file = '/tmp/sticker.webp'
    send_document(get_receiver(msg), file, ok_cb, false)
    end
return text
end
return {
  patterns = {"^[/!](imdb) (.*)$"},
run = run 
}
