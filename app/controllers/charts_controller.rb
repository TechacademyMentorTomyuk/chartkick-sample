# -*- coding: utf-8 -*-
class ChartsController < ApplicationController

  SPAN = Math::PI * 4
  STEP = 0.1
  STEP_UNIT = 10

  def index
    @data1 = []  # 配列の場合
    @data2 = {}  # Hashの場合(User.order('group_id ASC).group(:group_id).count) 等
    @data3 = {}
    start = Date.new(2015, 1, 1)
    0.step(SPAN, STEP) {|r|
      t = (start + r * STEP_UNIT).to_s
      @data1 << [t, Math.sin(r)]
      @data2[t] = Math.sin(r*2)
      @data3[t] = Math.cos(r)
    }
  end
end
