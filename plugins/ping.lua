local datebase = {
  "من آنلاینم :/",
  "چته بنال :/",
  "چیه؟",
  }
local function run(msg, matches)
return datebase[math.random(#datebase)]
end
return {
  patterns = {
    "^ربات",
  },
  run = run
}