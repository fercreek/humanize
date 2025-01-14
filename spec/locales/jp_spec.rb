require 'spec_helper'

RSpec.describe Humanize, 'jp locale' do
  before do
    Humanize.configure do |config|
      config.default_locale = :jp
    end
  end

  tests = [
    [1, '一'],
    [2, '二'],
    [3, '三'],
    [4, '四'],
    [5, '五'],
    [6, '六'],
    [7, '七'],
    [8, '八'],
    [9, '九'],
    [10, '十'],
    [11, '十一'],
    [12, '十二'],
    [13, '十三'],
    [14, '十四'],
    [15, '十五'],
    [16, '十六'],
    [17, '十七'],
    [18, '十八'],
    [19, '十九'],
    [20, '二十'],
    [21, '二十一'],
    [22, '二十二'],
    [23, '二十三'],
    [24, '二十四'],
    [25, '二十五'],
    [26, '二十六'],
    [27, '二十七'],
    [28, '二十八'],
    [29, '二十九'],
    [30, '三十'],
    [31, '三十一'],
    [32, '三十二'],
    [33, '三十三'],
    [34, '三十四'],
    [35, '三十五'],
    [36, '三十六'],
    [37, '三十七'],
    [38, '三十八'],
    [39, '三十九'],
    [40, '四十'],
    [41, '四十一'],
    [42, '四十二'],
    [43, '四十三'],
    [44, '四十四'],
    [45, '四十五'],
    [46, '四十六'],
    [47, '四十七'],
    [48, '四十八'],
    [49, '四十九'],
    [50, '五十'],
    [51, '五十一'],
    [52, '五十二'],
    [53, '五十三'],
    [54, '五十四'],
    [55, '五十五'],
    [56, '五十六'],
    [57, '五十七'],
    [58, '五十八'],
    [59, '五十九'],
    [60, '六十'],
    [61, '六十一'],
    [62, '六十二'],
    [63, '六十三'],
    [64, '六十四'],
    [65, '六十五'],
    [66, '六十六'],
    [67, '六十七'],
    [68, '六十八'],
    [69, '六十九'],
    [70, '七十'],
    [71, '七十一'],
    [72, '七十二'],
    [73, '七十三'],
    [74, '七十四'],
    [75, '七十五'],
    [76, '七十六'],
    [77, '七十七'],
    [78, '七十八'],
    [79, '七十九'],
    [80, '八十'],
    [81, '八十一'],
    [82, '八十二'],
    [83, '八十三'],
    [84, '八十四'],
    [85, '八十五'],
    [86, '八十六'],
    [87, '八十七'],
    [88, '八十八'],
    [89, '八十九'],
    [90, '九十'],
    [91, '九十一'],
    [92, '九十二'],
    [93, '九十三'],
    [94, '九十四'],
    [95, '九十五'],
    [96, '九十六'],
    [97, '九十七'],
    [98, '九十八'],
    [99, '九十九'],
    [100, '百'],
    [101, '百一'],
    [110, '百十'],
    [111, '百十一'],
    [120, '百二十'],
    [121, '百二十一'],
    [130, '百三十'],
    [131, '百三十一'],
    [190, '百九十'],
    [191, '百九十一'],
    [199, '百九十九'],
    [999, '九百九十九'],
    [1000, '一千'],
    [1001, '一千一'],
    [1010, '一千十'],
    [1011, '一千十一'],
    [1020, '一千二十'],
    [1021, '一千二十一'],
    [2000, '二千'],
    [2001, '二千一'],
    [3456, '三千四百五十六'],
    [4567, '四千五百六十七'],
    [5678, '五千六百七十八'],
    [6789, '六千七百八十九'],
    [9999, '九千九百九十九'],
    [10000, '一万'],
    [11000, '一万一千'],
    [11100, '一万一千百'],
    [11110, '一万一千百十'],
    [11111, '一万一千百十一'],
    [20000, '二万'],
    [21000, '二万一千'],
    [21100, '二万一千百'],
    [21110, '二万一千百十'],
    [21111, '二万一千百十一'],
    [23456, '二万三千四百五十六'],
    [345678, '三十四万五千六百七十八'],
    [456789, '四十五万六千七百八十九'],
    [678901, '六十七万八千九百一'],
    [9876543, '九百八十七万六千五百四十三'],
    [10000000, '一千万'],
    [11110000, '一千百十一万'],
    [20000000, '二千万'],
    [22220000, '二千二百二十二万'],
    [87654321, '八千七百六十五万四千三百二十一'],
    [100000000, '一億'],
    [765432109, '七億六千五百四十三万二千百九'],
    [543210987, '五億四千三百二十一万九百八十七'],
    [5678000000, '五十六億七千八百万'],
    [1000000000000, '一兆'],
    [1000000000001, '一兆一'],
    [1000100010000, '一兆一億一万'],
    [1000100010001, '一兆一億一万一'],
    [1100110011001, '一兆一千一億一千一万一千一'],
    [2200220022002, '二兆二千二億二千二万二千二'],
    [999999999999999999999999999999999999999999999999999999999999999999999999, '九千九百九十九無量大数九千九百九十九不可思議九千九百九十九那由他九千九百九十九阿僧祇九千九百九十九恒河沙九千九百九十九極九千九百九十九載九千九百九十九正九千九百九十九澗九千九百九十九溝九千九百九十九穣九千九百九十九𥝱九千九百九十九垓九千九百九十九京九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九',
     [-123422223.48948753, 'マイナス一億二千三百四十二万二千二百二十三・四八九四八八']]
  ]

  tests.each do |num, output|
    it "#{num} equals #{output}" do
      expect(num.humanize).to eql(output)
    end
  end

  context 'decimals: number' do
    it 'returns the decimals as whole numbers' do
      num = 8.159265358
      expect(num.humanize()).to eq('八・一五九二六五三五八')
      expect(num.humanize(decimals_as: :number)).to eq('八・一億五千九百二十六万五千三百五十八')
    end
  end

  describe 'when called on conceptual number' do
    it 'reads correctly' do
      inf = Float::INFINITY
      neg_inf = -inf
      nan = inf + neg_inf

      expect(inf.humanize).to eql('無限大')
      expect(neg_inf.humanize).to eql('マイナス無限大')
      expect(nan.humanize).to eql('未定義')
    end
  end
end
