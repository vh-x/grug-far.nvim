local utils = require('grug-far/utils')
local MiniTest = require('mini.test')
local expect = MiniTest.expect

describe('strEllideAfter', function()
  it('returns empty string if n = 0', function()
    expect.equality('', utils.strEllideAfter('hello world', 0))
  end)
  it('returns string if strlen < n', function()
    expect.equality('hello world', utils.strEllideAfter('hello world', 20))
  end)
  it('returns ellided strign if strlen > n', function()
    expect.equality('hello...', utils.strEllideAfter('hello world', 5))
  end)
  it('adds prefix if proficed', function()
    expect.equality('say hello...', utils.strEllideAfter('hello world', 5, 'say '))
  end)
end)

describe('strFindLast', function()
  it('finds the last newline in a string when there is one', function()
    expect.equality(7, utils.strFindLast('onetwo\nthree', '\n'))
  end)
  it('finds the last newline in a string when there are multiple', function()
    expect.equality(8, utils.strFindLast('one\ntwo\nthree', '\n'))
  end)
  it('finds the last newline in a string when it is the last item', function()
    expect.equality(8, utils.strFindLast('one\ntwo\n', '\n'))
  end)
  it('returns nil when there are none', function()
    expect.equality(nil, utils.strFindLast('one_two_three', '\n'))
  end)
end)
