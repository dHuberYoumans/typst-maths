local M = {}

local greek_letters = {
    a = "alpha",
    b = "beta",
    g = "gamma",
    d = "delta",
    e = "epsilon",
    z = "zeta",
    h = "eta",
    q = "theta",
    i = "iota",
    k = "kappa",
    l = "lambda",
    m = "mu",
    n = "nu",
    x = "xi",
    o = "omicron",
    p = "pi",
    r = "rho",
    s = "sigma",
    t = "tau",
    y = "upsilon",
    f = "phi.alt",
    c = "chi",
    v = "psi",
    w = "omega",
    A = "Alpha",
    B = "Beta",
    G = "Gamma",
    D = "Delta",
    E = "Epsilon",
    Z = "Zeta",
    H = "Eta",
    Q = "Theta",
    I = "Iota",
    K = "Kappa",
    L = "Lambda",
    M = "Mu",
    N = "Nu",
    X = "Xi",
    O = "Omicron",
    P = "Pi",
    R = "Rho",
    S = "Sigma",
    T = "Tau",
    Y = "Upsilon",
    F = "Phi",
    C = "Chi",
    V = "Psi",
    W = "Omega",
}

function M.replace()
    vim.schedule(function()
        local next_char = vim.fn.getcharstr()
        if string.match(next_char, '%a') then
            vim.api.nvim_feedkeys(greek_letters[next_char], "n", false)
        elseif next_char == '/' then
            vim.api.nvim_feedkeys("frac(<++>,<++>)", "n", false)
            vim.defer_fn(function()
                vim.cmd("normal! T(df>a")
            end,20)
        end
    end)
end



return M
