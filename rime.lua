
-- openfly
openfly_shortcut_processor = require("openfly_shortcut_processor")
openfly_date_translator = require("openfly_date_translator")
openfly_time_translator = require("openfly_time_translator")
openfly_shortcut_translator = require("openfly_shortcut_translator")
openfly_hint_filter = require("openfly_hint_filter")
openfly_deletion_filter = require("openfly_deletion_filter")
-- melt_pinyin
local M= require("melt")
get_date = M.getdate
jpcharset_filter = M.jpcharsetfilter
long_word_filter = M.longwordfilter
autocap_filter =M.autocapfilter
oo_processor = M.ooprocessor
oo_filter =M.oofilter
-- I. translators:

-- date_translator: 将 `date` 翻译为当前日期
-- 详见 `lua/date.lua`:
date_translator = require("date")

-- time_translator: 将 `time` 翻译为当前时间
-- 详见 `lua/time.lua`
time_translator = require("time")

-- week_translator: 将 `week` 翻译为当前星期
-- 详见 `lua/week.lua`
week_translator =require("week")

-- number_translator: 将 `/` + 阿拉伯数字 翻译为大小写汉字
-- 详见 `lua/number.lua`
number_translator = require("number")
-- II. filters:

-- charset_filter: 滤除含 CJK 扩展汉字的候选项
-- charset_comment_filter: 为候选项加上其所属字符集的注释
-- 详见 `lua/charset.lua`
local charset = require("charset")
charset_filter = charset.filter
charset_comment_filter = charset.comment_filter

-- single_char_filter: 候选项重排序，使单字优先
-- 详见 `lua/single_char.lua`
single_char_filter = require("single_char")

-- reverse_lookup_filter: 依地球拼音为候选项加上带调拼音的注释
-- 详见 `lua/reverse.lua`
reverse_lookup_filter = require("reverse")

-- select_character_processor: 以词定字
-- 详见 `lua/select_character.lua`
select_character_processor = require("select_character")
-- easy_en_enhance_filter: 连续输入增强
-- 详见 `lua/easy_en.lua`
local easy_en = require("easy_en")
easy_en_enhance_filter = easy_en.enhance_filter
