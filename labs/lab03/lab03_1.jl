# Вариант 1
using Plots
using DifferentialEquations

x0 = 30000
y0 = 17000

a = 0.45 # константа, характеризующая степень влияния различных факторов на потери
b = 0.86 # эффективность боевых действий армии у
c = 0.49 # эффективность боевых действий армии х
h = 0.73 # константа, характеризующая степень влияния различных факторов на потери

function P(t)
    p = sin(t+1)
end

function Q(t)
    q = cos(t+2)
end

function ode_fn(du, u, p, t)
    x, y = u
    du[1] = - a*u[1] - b*u[2] + P(t) # изменение численности первой армии
    du[2] = - c*u[1] - h*u[2] + Q(t) # изменение численности второй
end

v0 = [x0, y0]
tspan = (0.0, 1.5)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax=0.1)

X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
  dpi=300,
  title="Модель боевых действий",
  legend=true)

plot!(
  plt,
  T,
  X,
  label="Численность армии x",
  color=:blue)

plot!(
  plt,
  T,
  Y,
  label="Численность армии y",
  color=:red)

savefig(plt, "lab03_1.png")
