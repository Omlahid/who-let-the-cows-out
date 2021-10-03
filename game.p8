pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
local show_congrats=false
local messages = {}
local ices = {}
local cs = {}
local bs = {}
local ps = {}
local ds = {}
local gs = {}
local gm = {
    level = 1,
    bnds = {},
    is_level_complete = false,
    update=function()
    end,
    draw=function(self)
        if self.level>1 and self.level<17 then
            map(0, 0, self.bnds.xn, self.bnds.yn, ((self.bnds.xp-self.bnds.xn+8)/8), ((self.bnds.yp-self.bnds.yn+8)/8))
            rect(self.bnds.xn-2, self.bnds.yn-2, self.bnds.xp+9, self.bnds.yp+9, 7)
        end
    end
}
function init(i)
    gm.is_level_complete=false
    if i==0 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 0,
            xp = 15*8,
            yn = 0,
            yp = 15*8
        }
        add(ds, make_d(8*8, 8*8))
        add(ps, make_p(4*8, 4*8))
        add(cs, make_c(5*8, 6*8))
        add(gs, make_g(10*8, 8*8))
        add(gs, make_g(7*8, 5*8))
        add(bs, make_b(3*8, 2*8))
        add(bs, make_b(1*8, 2*8))
        add(bs, make_b(7*8, 4*8))
        add(bs, make_b(3*8, 2*8))
        add(bs, make_b(2*8, 3*8))
        add(ices, make_ice(3*8, 3*8))
        add(ices, make_ice(3*8, 4*8))
    elseif i==1 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 0,
            xp = -8,
            yn = 0,
            yp = -8
        }
        add(cs, make_c(60-24, 28))
        add(cs, make_c(60, 28))
        add(cs, make_c(60+24, 28))
        add(messages, add_message("who let the cows out", 24, 16))
        add(messages, add_message("move with the arrow keys", 16, 44))
        add(messages, add_message("press z or x to start", 24, 58))
        add(messages, add_message("press z or x to reset", 24, 72))
        add(messages, add_message("made in pico-8 by omlahid", 16, 108))
        add(messages, add_message("for ludum dare 49", 28, 120))
    elseif i==2 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 3*8,
            xp = 12*8,
            yn = 7*8,
            yp = 8*8
        }
        add(ps, make_p(3*8, 7*8))
        add(cs, make_c(5*8, 8*8))
        add(ds, make_d(11*8, 7*8))
        add(messages, add_message("get the cow through the door", 12, 10*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==3 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 3*8,
            xp = 11*8,
            yn = 6*8,
            yp = 9*8
        }
        add(ps, make_p(3*8, 7*8))
        add(cs, make_c(5*8, 8*8))
        add(cs, make_c(6*8, 7*8))
        add(ds, make_d(10*8, 7*8))
        add(bs, make_b(6*8, 8*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==4 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 4*8,
            xp = 11*8,
            yn = 5*8,
            yp = 9*8
        }
        add(ps, make_p(5*8, 8*8))
        add(cs, make_c(7*8, 7*8))
        add(cs, make_c(7*8, 8*8))
        add(ds, make_d(10*8, 7*8))
        add(bs, make_b(6*8, 6*8))
        add(bs, make_b(6*8, 7*8))
        add(bs, make_b(6*8, 9*8))
        add(bs, make_b(8*8, 6*8))
        add(bs, make_b(8*8, 7*8))
        add(bs, make_b(8*8, 9*8))
        add(bs, make_b(9*8, 6*8))
        add(bs, make_b(10*8, 9*8))
        add(bs, make_b(11*8, 6*8))
        add(bs, make_b(9*8, 9*8))
        add(bs, make_b(10*8, 6*8))
        add(bs, make_b(11*8, 9*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==5 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 3*8,
            xp = 11*8,
            yn = 5*8,
            yp = 9*8
        }
        add(ps, make_p(5*8, 9*8))
        add(cs, make_c(6*8, 6*8))
        add(cs, make_c(7*8, 6*8))
        add(ds, make_d(10*8, 8*8))
        add(bs, make_b(6*8, 5*8))
        add(bs, make_b(7*8, 7*8))
        add(bs, make_b(6*8, 8*8))
        add(bs, make_b(7*8, 5*8))
        add(bs, make_b(6*8, 7*8))
        add(bs, make_b(7*8, 8*8))
        add(bs, make_b(9*8, 6*8))
        add(bs, make_b(9*8, 7*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==6 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 4*8,
            xp = 11*8,
            yn = 5*8,
            yp = 9*8
        }
        add(ps, make_p(4*8, 7*8))
        add(cs, make_c(6*8, 6*8))
        add(cs, make_c(6*8, 7*8))
        add(cs, make_c(6*8, 8*8))
        add(cs, make_c(6*8, 9*8))
        add(ds, make_d(10*8, 8*8))
        add(bs, make_b(6*8, 5*8))
        add(bs, make_b(7*8, 5*8))
        add(bs, make_b(9*8, 6*8))
        add(bs, make_b(7*8, 7*8))
        add(bs, make_b(10*8, 7*8))
        add(bs, make_b(7*8, 8*8))
        add(bs, make_b(9*8, 8*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==7 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 5*8,
            xp = 10*8,
            yn = 6*8,
            yp = 9*8
        }
        add(ps, make_p(5*8, 8*8))
        add(cs, make_c(7*8, 8*8))
        add(gs, make_g(8*8, 8*8))
        add(ds, make_d(10*8, 8*8))
        add(bs, make_b(7*8, 7*8))
        add(bs, make_b(7*8, 9*8))
        add(bs, make_b(8*8, 7*8))
        add(bs, make_b(8*8, 9*8))
        add(messages, add_message("goats can be pushed", 16, gm.bnds.yp+12))
        add(messages, add_message("but don't go through doors", 16, gm.bnds.yp+24))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==8 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 5*8,
            xp = 10*8,
            yn = 5*8,
            yp = 9*8
        }
        add(ps, make_p(5*8, 7*8))
        add(cs, make_c(6*8, 7*8))
        add(cs, make_c(7*8, 7*8))
        add(gs, make_g(8*8, 8*8))
        add(gs, make_g(9*8, 6*8))
        add(ds, make_d(10*8, 8*8))
        add(bs, make_b(8*8, 5*8))
        add(bs, make_b(10*8, 7*8))
        add(bs, make_b(6*8, 8*8))
        add(bs, make_b(6*8, 9*8))
        add(bs, make_b(8*8, 9*8))
        add(bs, make_b(9*8, 9*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==9 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 4*8,
            xp = 10*8,
            yn = 5*8,
            yp = 9*8
        }
        add(ps, make_p(4*8, 6*8))
        add(cs, make_c(5*8, 8*8))
        add(cs, make_c(9*8, 7*8))
        add(gs, make_g(6*8, 8*8))
        add(gs, make_g(10*8, 7*8))
        add(ds, make_d(8*8, 7*8))
        add(bs, make_b(5*8, 5*8))
        add(bs, make_b(6*8, 5*8))
        add(bs, make_b(8*8, 5*8))
        add(bs, make_b(5*8, 6*8))
        add(bs, make_b(6*8, 6*8))
        add(bs, make_b(8*8, 6*8))
        add(bs, make_b(5*8, 7*8))
        add(bs, make_b(6*8, 7*8))
        add(bs, make_b(5*8, 9*8))
        add(bs, make_b(6*8, 9*8))
        add(bs, make_b(8*8, 9*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==10 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 4*8,
            xp = 11*8,
            yn = 5*8,
            yp = 9*8
        }
        add(ps, make_p(5*8, 8*8))
        add(cs, make_c(5*8, 7*8))
        add(cs, make_c(10*8, 8*8))
        add(gs, make_g(8*8, 6*8))
        add(gs, make_g(7*8, 7*8))
        add(gs, make_g(9*8, 8*8))
        add(gs, make_g(8*8, 9*8))
        add(ds, make_d(8*8, 7*8))
        add(bs, make_b(9*8, 7*8))
        add(bs, make_b(7*8, 8*8))
        add(bs, make_b(9*8, 5*8))
        add(bs, make_b(10*8, 5*8))
        add(bs, make_b(11*8, 5*8))
        add(bs, make_b(11*8, 9*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==11 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 4*8,
            xp = 10*8,
            yn = 6*8,
            yp = 9*8
        }
        add(ps, make_p(5*8, 8*8))
        add(cs, make_c(5*8, 7*8))
        add(gs, make_g(6*8, 8*8))
        add(ds, make_d(9*8, 8*8))
        add(ices, make_ice(7*8, 8*8))
        add(ices, make_ice(8*8, 8*8))
        add(bs, make_b(7*8, 6*8))
        add(bs, make_b(7*8, 7*8))
        add(bs, make_b(7*8, 9*8))
        add(messages, add_message("ice is slippery", 16, gm.bnds.yp+12))
        add(messages, add_message("things pushed on ice slip", 16, gm.bnds.yp+24))
        add(messages, add_message("til the end", 16, gm.bnds.yp+36))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==12 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 4*8,
            xp = 10*8,
            yn = 4*8,
            yp = 10*8
        }
        add(ps, make_p(6*8, 7*8))
        add(cs, make_c(6*8, 6*8))
        add(cs, make_c(5*8, 7*8))
        add(cs, make_c(6*8, 9*8))
        add(cs, make_c(7*8, 9*8))
        add(gs, make_g(8*8, 9*8))
        add(gs, make_g(9*8, 9*8))
        add(ds, make_d(9*8, 4*8))
        add(ices, make_ice(9*8, 6*8))
        add(ices, make_ice(9*8, 7*8))
        add(ices, make_ice(9*8, 8*8))
        add(bs, make_b(7*8, 4*8))
        add(bs, make_b(7*8, 5*8))
        add(bs, make_b(8*8, 6*8))
        add(bs, make_b(8*8, 7*8))
        add(bs, make_b(8*8, 8*8))
        add(bs, make_b(10*8, 6*8))
        add(bs, make_b(10*8, 7*8))
        add(bs, make_b(10*8, 8*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==13 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 3*8,
            xp = 12*8,
            yn = 5*8,
            yp = 9*8
        }
        add(ps, make_p(3*8, 8*8))
        add(cs, make_c(4*8, 7*8))
        add(cs, make_c(9*8, 7*8))
        add(gs, make_g(4*8, 8*8))
        add(gs, make_g(5*8, 8*8))
        add(ds, make_d(7*8, 5*8))
        add(ices, make_ice(6*8, 8*8))
        add(ices, make_ice(7*8, 8*8))
        add(ices, make_ice(8*8, 8*8))
        add(bs, make_b(5*8, 5*8))
        add(bs, make_b(5*8, 6*8))
        add(bs, make_b(11*8, 5*8))
        add(bs, make_b(11*8, 6*8))
        add(bs, make_b(12*8, 5*8))
        add(bs, make_b(12*8, 6*8))
        add(bs, make_b(6*8, 7*8))
        add(bs, make_b(7*8, 7*8))
        add(bs, make_b(8*8, 7*8))
        add(bs, make_b(10*8, 7*8))
        add(bs, make_b(11*8, 7*8))
        add(bs, make_b(12*8, 7*8))
        add(bs, make_b(6*8, 9*8))
        add(bs, make_b(7*8, 9*8))
        add(bs, make_b(8*8, 9*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==14 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 2*8,
            xp = 12*8,
            yn = 4*8,
            yp = 10*8
        }
        add(ps, make_p(3*8, 6*8))
        add(cs, make_c(3*8, 7*8))
        add(cs, make_c(6*8, 5*8))
        add(cs, make_c(7*8, 9*8))
        add(gs, make_g(4*8, 7*8))
        add(ds, make_d(11*8, 6*8))
        add(ices, make_ice(7*8, 6*8))
        add(ices, make_ice(5*8, 7*8))
        add(ices, make_ice(6*8, 7*8))
        add(ices, make_ice(7*8, 7*8))
        add(ices, make_ice(8*8, 7*8))
        add(ices, make_ice(7*8, 8*8))
        add(bs, make_b(3*8, 4*8))
        add(bs, make_b(4*8, 5*8))
        add(bs, make_b(5*8, 6*8))
        add(bs, make_b(6*8, 6*8))
        add(bs, make_b(8*8, 6*8))
        add(bs, make_b(5*8, 8*8))
        add(bs, make_b(6*8, 8*8))
        add(bs, make_b(8*8, 8*8))
        add(bs, make_b(9*8, 9*8))
        add(bs, make_b(10*8, 10*8))
        add(bs, make_b(10*8, 7*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==15 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 3*8,
            xp = 12*8,
            yn = 4*8,
            yp = 10*8
        }
        add(ps, make_p(3*8, 7*8))
        add(cs, make_c(4*8, 6*8))
        add(cs, make_c(5*8, 7*8))
        add(cs, make_c(5*8, 8*8))
        add(gs, make_g(5*8, 6*8))
        add(ds, make_d(12*8, 7*8))
        add(ices, make_ice(6*8, 6*8))
        add(ices, make_ice(7*8, 6*8))
        add(ices, make_ice(8*8, 6*8))
        add(ices, make_ice(8*8, 7*8))
        add(ices, make_ice(6*8, 8*8))
        add(ices, make_ice(7*8, 8*8))
        add(ices, make_ice(8*8, 8*8))
        add(bs, make_b(6*8, 4*8))
        add(bs, make_b(6*8, 5*8))
        add(bs, make_b(10*8, 6*8))
        add(bs, make_b(6*8, 7*8))
        add(bs, make_b(7*8, 7*8))
        add(bs, make_b(9*8, 7*8))
        add(bs, make_b(6*8, 9*8))
        add(bs, make_b(6*8, 10*8))
        add(bs, make_b(11*8, 8*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==16 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 4*8,
            xp = 11*8,
            yn = 4*8,
            yp = 11*8
        }
        add(ps, make_p(4*8, 7*8))
        add(cs, make_c(5*8, 8*8))
        add(cs, make_c(10*8, 7*8))
        add(gs, make_g(8*8, 8*8))
        add(gs, make_g(4*8, 4*8))
        add(gs, make_g(4*8, 5*8))
        add(gs, make_g(5*8, 4*8))
        add(gs, make_g(5*8, 5*8))
        add(ds, make_d(7*8, 4*8))
        add(ices, make_ice(6*8, 7*8))
        add(ices, make_ice(7*8, 7*8))
        add(ices, make_ice(8*8, 7*8))
        add(ices, make_ice(9*8, 7*8))
        add(ices, make_ice(10*8, 7*8))
        add(ices, make_ice(6*8, 8*8))
        add(ices, make_ice(7*8, 8*8))
        add(ices, make_ice(8*8, 8*8))
        add(ices, make_ice(9*8, 8*8))
        add(ices, make_ice(10*8, 8*8))
        add(ices, make_ice(6*8, 9*8))
        add(ices, make_ice(7*8, 9*8))
        add(ices, make_ice(8*8, 9*8))
        add(ices, make_ice(9*8, 9*8))
        add(ices, make_ice(10*8, 9*8))
        add(bs, make_b(6*8, 4*8))
        add(bs, make_b(6*8, 5*8))
        add(bs, make_b(11*8, 5*8))
        add(bs, make_b(4*8, 6*8))
        add(bs, make_b(5*8, 6*8))
        add(bs, make_b(6*8, 6*8))
        add(bs, make_b(7*8, 6*8))
        add(bs, make_b(10*8, 6*8))
        add(bs, make_b(7*8, 7*8))
        add(bs, make_b(9*8, 9*8))
        add(bs, make_b(6*8, 10*8))
        add(bs, make_b(7*8, 10*8))
        add(bs, make_b(10*8, 10*8))
        add(messages, add_message("press z or x to reset level", 8, 120))
    elseif i==17 then
        cs = {}
        gs = {}
        bs = {}
        ps = {}
        ds = {}
        ices= {}
        messages = {}
        gm.bnds={
            xn = 0,
            xp = -8,
            yn = 0,
            yp = -8
        }
        add(messages, add_message("thanks for playing!", 24, 16))
        add(messages, add_message("if you liked it", 32, 28))
        add(messages, add_message("and got to the end", 26, 40))
        add(messages, add_message("remember to rate it", 26, 52))
        add(cs, make_c(60-24, 64))
        add(cs, make_c(60, 64))
        add(cs, make_c(60+24, 64))
    end
end
function display_score()
    if gm.level>1 and gm.level !=17 then
        local i = 0
        for c in all(cs) do
            if (c.is_collected) then
                spr(3, 8+i, 12)
                i+=12
            else
                spr(6, 8+i, 12)
                i+=12
            end
        end
        local adapted_level = gm.level-1
        print("level "..adapted_level.."/15", 8, 0, 7)
    end
end
function add_message(text, x, y)
    return {
        x = x,
        y = y,
        text = text,
        draw=function(self)
            print(self.text, self.x, self.y, 7)
        end
    }
end
function is_blocked(x, y)
    if x<gm.bnds.xn or x>gm.bnds.xp or y<gm.bnds.yn or y>gm.bnds.yp then
        return true
    end
    for b in all(bs) do
        if (b.x==x and b.y==y) then
            return true
        end
    end
    return false
end
function slip(obj, dir)
    if(dir==0)then
        if (not is_blocked(obj.x-8, obj.y) and push(obj.x-8, obj.y, 0)) then
            obj.x-=8
            for ice in all(ices) do
                if (ice.x==obj.x and ice.y==obj.y) then
                    slip(obj, 0)
                end
            end
        end
    end
    if(dir==1)then
        if (not is_blocked(obj.x+8, obj.y) and push(obj.x+8, obj.y, 1)) then
            obj.x+=8
            for ice in all(ices) do
                if (ice.x==obj.x and ice.y==obj.y) then
                    slip(obj, 1)
                end
            end
        end
    end
    if(dir==2)then
        if (not is_blocked(obj.x, obj.y-8) and push(obj.x, obj.y-8, 2)) then
            obj.y-=8
            for ice in all(ices) do
                if (ice.x==obj.x and ice.y==obj.y) then
                    slip(obj, 2)
                end
            end
        end
    end
    if(dir==3)then
        if (not is_blocked(obj.x, obj.y+8) and push(obj.x, obj.y+8, 3)) then
            obj.y+=8
            for ice in all(ices) do
                if (ice.x==obj.x and ice.y==obj.y) then
                    slip(obj, 3)
                end
            end
        end
    end
end
function push(x, y, dir)
    for c in all(cs) do
        if not c.is_collected and c.x == x and c.y == y then
            if (dir==0) then
                if is_blocked(c.x-8, c.y) or not push(c.x-8, c.y, dir) then
                    return false
                else
                    c.x-=8
                    for ice in all(ices) do
                        if (ice.x==c.x and ice.y==c.y) then
                            slip(c, 0)
                        end
                    end
                end
            elseif(dir==1) then
                if is_blocked(c.x+8, c.y) or not push(c.x+8, c.y, dir) then
                    return false
                else
                    c.x+=8
                    for ice in all(ices) do
                        if (ice.x==c.x and ice.y==c.y) then
                            slip(c, 1)
                        end
                    end
                end
            elseif(dir==2)then
                if is_blocked(c.x, c.y-8) or not push(c.x, c.y-8, dir) then
                    return false
                else
                    c.y-=8
                    for ice in all(ices) do
                        if (ice.x==c.x and ice.y==c.y) then
                            slip(c, 2)
                        end
                    end
                end
            elseif(dir==3)then
                if is_blocked(c.x, c.y+8) or not push(c.x, c.y+8, dir) then
                    return false
                else
                    c.y+=8
                    for ice in all(ices) do
                        if (ice.x==c.x and ice.y==c.y) then
                            slip(c, 3)
                        end
                    end
                end
            end
        end
    end
    for g in all(gs) do
        if g.x == x and g.y == y then
            if (dir==0) then
                if is_blocked(g.x-8, g.y) or not push(g.x-8, g.y, dir) then
                    return false
                else
                    g.x-=8
                    for ice in all(ices) do
                        if (ice.x==g.x and ice.y==g.y) then
                            slip(g, 0)
                        end
                    end
                end
            elseif(dir==1) then
                if is_blocked(g.x+8, g.y) or not push(g.x+8, g.y, dir) then
                    return false
                else
                    g.x+=8
                    for ice in all(ices) do
                        if (ice.x==g.x and ice.y==g.y) then
                            slip(g, 1)
                        end
                    end
                end
            elseif(dir==2)then
                if is_blocked(g.x, g.y-8) or not push(g.x, g.y-8, dir) then
                    return false
                else
                    g.y-=8
                    for ice in all(ices) do
                        if (ice.x==g.x and ice.y==g.y) then
                            slip(g, 2)
                        end
                    end
                end
            elseif(dir==3)then
                if is_blocked(g.x, g.y+8) or not push(g.x, g.y+8, dir) then
                    return false
                else
                    g.y+=8
                    for ice in all(ices) do
                        if (ice.x==g.x and ice.y==g.y) then
                            slip(g, 3)
                        end
                    end
                end
            end
        end
    end
    for p in all(ps) do
        if p.x == x and p.y == y then
            if (dir==0) then
                if is_blocked(p.x-8, p.y) or not push(p.x-8, p.y, dir) then
                    return false
                else
                    p.x-=8
                end
            elseif(dir==1) then
                if is_blocked(p.x+8, p.y) or not push(p.x+8, p.y, dir) then
                    return false
                else
                    p.x+=8
                end
            elseif(dir==2)then
                if is_blocked(p.x, p.y-8) or not push(p.x, p.y-8, dir) then
                    return false
                else
                    p.y-=8
                end
            elseif(dir==3)then
                if is_blocked(p.x, p.y+8) or not push(p.x, p.y+8, dir) then
                    return false
                else
                    p.y+=8
                end
            end
        end
    end
    return true
end
function make_p(x, y)
    return {
        x = x,
        y = y,
        draw=function(self)
            spr(1, self.x, self.y)
        end,
        update=function(self)
            if(btnp(0)) then
                if (is_blocked(self.x-8, self.y)) then
                    sfx(1)
                elseif push(self.x-8, self.y, 0) then
                    self.x-=8
                    sfx(0)
                else
                    sfx(1)
                end
                for ice in all(ices) do
                    if (ice.x==self.x and ice.y==self.y) then
                        slip(self, 0)
                    end
                end
            end
            if(btnp(1)) then
                if (is_blocked(self.x+8, self.y)) then
                    sfx(1)
                elseif push(self.x+8, self.y, 1) then
                    self.x+=8
                    sfx(0)
                else
                    sfx(1)
                end
                for ice in all(ices) do
                    if (ice.x==self.x and ice.y==self.y) then
                        slip(self, 1)
                    end
                end
            end
            if(btnp(2)) then
                if (is_blocked(self.x, self.y-8)) then
                    sfx(1)
                elseif push(self.x, self.y-8, 2) then
                    self.y-=8
                    sfx(0)
                else
                    sfx(1)
                end
                for ice in all(ices) do
                    if (ice.x==self.x and ice.y==self.y) then
                        slip(self, 2)
                    end
                end
            end
            if(btnp(3)) then
                if (is_blocked(self.x, self.y+8)) then
                    sfx(1)
                elseif push(self.x, self.y+8, 3) then
                    self.y+=8
                    sfx(0)
                else
                    sfx(1)
                end
                for ice in all(ices) do
                    if (ice.x==self.x and ice.y==self.y) then
                        slip(self, 3)
                    end
                end
            end
        end
    }
end
function make_c(x, y)
    return {
        x = x,
        y = y,
        is_collected = false,
        draw=function(self)
            if (not self.is_collected) then
                spr(3, self.x, self.y)
            end
        end,
        update=function(self)
        end
    }
end
function make_g(x, y)
    return {
        x = x,
        y = y,
        draw=function(self)
            spr(8, self.x, self.y)
        end,
        update=function(self)
        end
    }
end
function make_d(x, y)
    return {
        x = x,
        y = y,
        draw=function(self)
            if(not (self.x-8 < gm.bnds.xn)) then
                spr(7, self.x-8, self.y, 1, 1, false, false)
                spr(7, self.x-8, self.y+8, 1, 1, false, true)
            end
            if(not (self.x+8 > gm.bnds.xp)) then
                spr(7, self.x+8, self.y, 1, 1, true, false)
                spr(7, self.x+8, self.y+8, 1, 1, true, true)
            end
            spr(2, self.x, self.y)
            spr(2, self.x, self.y+8)
        end,
        update=function(self)
            local i = 0
            for c in all(cs) do
                if c.x == self.x and (c.y == self.y or c.y == self.y+8) then
                    if (not c.is_collected) then
                        sfx(2)
                        sfx(3)
                    end
                    c.is_collected = true
                    i+=1
                end
            end
            if i==#cs and #cs != 0 then
                gm.is_level_complete=true
            end
        end
    }
end
function make_b(x, y)
    return {
        x = x,
        y = y,
        draw=function(self)
            spr(4, self.x, self.y)
        end,
        update=function(self)
        end
    }
end
function make_ice(x, y)
    return {
        x = x,
        y = y,
        draw=function(self)
            spr(9, self.x, self.y)
        end,
        update=function(self)
        end
    }
end
function _init()
    init(gm.level)
end
function _update()
    for p in all(ps) do
        p:update()
    end
    for d in all(ds) do
        d:update()
    end
    for c in all(cs) do
        c:update()
    end
    for g in all(gs) do
        g:update()
    end
    for b in all(bs) do
        b:update()
    end
    if gm.is_level_complete and gm.level != 0 then
        show_congrats=true
        if (btn(4) or btn(5)) then
            show_congrats=false
            --gm.is_level_complete=false
            gm.level=gm.level+1
            init(gm.level)
        end
    end
    if btn(4) or btn(5) then
        if gm.level==1 then gm.level=2 end
        init(gm.level)
    end
end
function _draw()
    cls()
    gm:draw()
    for ice in all(ices) do
        ice:draw()
    end
    for d in all(ds) do
        d:draw()
    end
    for p in all(ps) do
        p:draw()
    end
    for c in all(cs) do
        c:draw()
    end
    for g in all(gs) do
        g:draw()
    end
    for b in all(bs) do
        b:draw()
    end
    display_score()
    for message in all(messages) do
        message:draw()
    end
    if show_congrats==true then
        rectfill(6+8, (5*8)-2, (14*8)+2, (10*8)+2, 0)
        rect(6+8, (5*8)-2, (14*8)+2, (10*8)+2, 11)
        print("congratulations!", 4*8, 6*8, 7)
        print("press z or x to continue", 17, (6*8)+18, 7)
    end
end
__gfx__
0000000000999900bbbb3bbb0f0000f0a9a9aa9a05555550070000700000444400f00f00ccc6cccc000000000000000000000000000000000000000000000000
0000000099999999bb3b3bb307771110444444445555555507077070000042440dddddd0cc6ccccc000000000000000000000000000000000000000000000000
00700700041ff140bbb3bb3b777711119a9a9a9a555555557000000700004244ddddddddc6cccccc000000000000000000000000000000000000000000000000
0007700004f44f403bbbbbbb17d77d119a9a9aa9555555550000000000004244dd7dd7ddcccccccc000000000000000000000000000000000000000000000000
00077000004ff400b3bb3bbb11f77f11a9aaa9a95555555570000007000044240d1dd1d0cccccccc000000000000000000000000000000000000000000000000
007007000d8448d0bbbbb3bb017777709a9aa9a95555555507000070000044240dddddd0ccccc6cc000000000000000000000000000000000000000000000000
0000000000888800bbbbbbbb00eeee004444444455555555000000000000442400d77d00cccc6ccc000000000000000000000000000000000000000000000000
0000000004400440bb3bbbbb00e11e009a9aa9a905555550000770000000444400077000cccccccc000000000000000000000000000000000000000000000000
__label__
00000000700077707070777070000000777000707700777000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000700070007070700070000000007007000700700000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000700077007070770070000000777007000700777000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000700070007770700070000000700007000700007000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000777077700700777077700000777070007770777000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000070000700000070000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000070770700000070770700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000700000070000700000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000700000070000700000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000070000700000070000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000770000000000770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000007777777777777777777777777777777777777777777777777777777777777777777777777777000000000000000000000000000000
00000000000000000000007000000000000000000000000000000000000000000000000000000000000000000000000007000000000000000000000000000000
00000000000000000000007005555550055555500555555005555550055555500555555005555550055555500555555007000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007005555550055555500555555005555550055555500555555005555550055555500555555007000000000000000000000000000000
0000000000000000000000700555555005999950055555500f5555f0055555500555555005554444bbbb3bbb4444555007000000000000000000000000000000
00000000000000000000007055555555999999995555555557771115555555555555555555554244bb3b3bb34424555507000000000000000000000000000000
00000000000000000000007055555555541ff1455555555577771111555555555555555555554244bbb3bb3b4424555507000000000000000000000000000000
0000000000000000000000705555555554f44f455555555517d77d115555555555555555555542443bbbbbbb4424555507000000000000000000000000000000
00000000000000000000007055555555554ff4555555555511f77f11555555555555555555554424b3bb3bbb4244555507000000000000000000000000000000
000000000000000000000070555555555d8448d55555555551777775555555555555555555554424bbbbb3bb4244555507000000000000000000000000000000
00000000000000000000007055555555558888555555555555eeee55555555555555555555554424bbbbbbbb4244555507000000000000000000000000000000
00000000000000000000007005555550044554400555555005e11e50055555500555555005554444bb3bbbbb4444555007000000000000000000000000000000
00000000000000000000007005555550055555500f5555f0a9a9aa9a055555500555555005554444bbbb3bbb4444555007000000000000000000000000000000
00000000000000000000007055555555555555555777111544444444555555555555555555554424bb3b3bb34244555507000000000000000000000000000000
0000000000000000000000705555555555555555777711119a9a9a9a555555555555555555554424bbb3bb3b4244555507000000000000000000000000000000
000000000000000000000070555555555555555517d77d119a9a9aa95555555555555555555544243bbbbbbb4244555507000000000000000000000000000000
000000000000000000000070555555555555555511f77f11a9aaa9a9555555555555555555554244b3bb3bbb4424555507000000000000000000000000000000
0000000000000000000000705555555555555555517777759a9aa9a9555555555555555555554244bbbbb3bb4424555507000000000000000000000000000000
000000000000000000000070555555555555555555eeee5544444444555555555555555555554244bbbbbbbb4424555507000000000000000000000000000000
000000000000000000000070055555500555555005e11e509a9aa9a9055555500555555005554444bb3bbbbb4444555007000000000000000000000000000000
00000000000000000000007005555550055555500555555005555550055555500555555005555550055555500555555007000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007055555555555555555555555555555555555555555555555555555555555555555555555507000000000000000000000000000000
00000000000000000000007005555550055555500555555005555550055555500555555005555550055555500555555007000000000000000000000000000000
00000000000000000000007000000000000000000000000000000000000000000000000000000000000000000000000007000000000000000000000000000000
00000000000000000000007777777777777777777777777777777777777777777777777777777777777777777777777777000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000777077707770077007700000777000000770777000007070000077700770000077707770077077707770000070007770707077707000000000000000
00000000707070707000700070000000007000007070707000007070000007007070000070707000700070000700000070007000707070007000000000000000
00000000777077007700777077700000070000007070770000000700000007007070000077007700777077000700000070007700707077007000000000000000
00000000700070707000007000700000700000007070707000007070000007007070000070707000007070000700000070007000777070007000000000000000
00000000700070707770770077000000777000007700707000007070000007007700000070707770770077700700000077707770070077707770000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

__map__
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050505050505050505050505050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100001015010150101500f1500f150031002010021100221002210022100221000e1500d1500d1500d1500d150181001710003100031000470004700045000450000000000000000000000000000000000000
000100000000004150041500415004150041500110006100061000610006100061000610005150051500515005150051500515005150051500515005150051500515005100051000510000000000000000000000
00020000060500a0500b0500d0500e0500e0500e0500e0500e0500e0500c0500b050090500705006050030500105000050000502b0002c0002e0002f000310003200034000350003700000000000000000000000
000100001c0501e050210502405026050290502b0502e05031050340503605038050390502d000300003100034000370003a00034000380003c0003f0003f0003f00000000000000000000000000000000000000
