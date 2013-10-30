



def mcd(n, d)
  u = n.abs
  v = d.abs
  while (v != 0)
    s = u
    u = v
    v = s % u
  end
  u
end

def mcm(n, d)
  s = n * d / mcd(n,d)
  s
end
