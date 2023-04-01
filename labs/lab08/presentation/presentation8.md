---
## Front matter
lang: ru-RU
title: Лабораторная работа № 8
author:
  - Юрченко Артём Алексеевич
group:
  - НФИбд-02-20, 1032201660
date: 2023, Москва

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---


# Цель работы

Цель данной работы:
1. Построение графика изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1.
2. Построение графика изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2.

# Задание

!["Вариант 1"](https://sun9-7.userapi.com/impg/PALuOYKn-WSD0h6LeY9xsIMxnGh79h8EQeYnyA/BSgcOD4XKUg.jpg?size=923x1006&quality=96&sign=13ad5b885fdae4eded37684215fe425c&type=album)
!["Вариант 13"](https://sun9-19.userapi.com/impg/HMRiTYkbhT1CaPSD8VamJ0AEn6lVyyOmzKLWzA/x6pE8AL2qXg.jpg?size=1039x1135&quality=96&sign=5a4fb316a0e2f51d901b5e2acb7f4019&type=album)


# Выполнение лабораторной работы
# Julia (первый случай)
Описание переменных 
```
using DifferentialEquations
using Plots

p_cr = 15
N = 17
q = 1
tau1 = 11
tau2 = 14
p1 = 8
p2 = 6

a1 = p_cr/(tau1*tau1*p1*p1*N*q)
a2 = p_cr/(tau2*tau2*p2*p2*N*q)
b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q) 
c1 = (p_cr-p1)/(tau1*p1)
c2 = (p_cr-p2)/(tau2*p2)

```
# Julia (первый случай)

Функция построения графиков:
```
function Fun(du, u, p, t)
    M1, M2 = u
    du[1] = u[1]-b/c1*u[1]*u[2]-a1/c1*u[1]*u[1]
    du[2] = c2/c1*u[2]-b/c1*u[1]*u[2]-a2/c1*u[2]*u[2]
end

v = [1.5, 2.5]
time = (0.0, 30.0)
prob = ODEProblem(Fun, v, time)
sol = solve(prob, dtmax = 0.05)
M1 = [u[1] for u in sol.u]
M2 = [u[2] for u in sol.u]
T = [t for t in sol.t]
```
# Julia (первый случай)

Построение графиков:

```
plt = plot(
    dpi = 300,
    legend =:topright)

plot!(
    plt,
    T,
    M1,
    label = "M1",
    color = :red)

plot!(
    plt,
    T,
    M2,
    label = "M2",
    color = :blue)

```

# Результаты работы кода на Julia

!["Рис.1 График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1 на языке Julia"](https://sun9-41.userapi.com/impg/cqJXOVHzTYtnvgcvTKdzs_w2Uqd3kcl0ZcmwHw/kLh_nSDQY9c.jpg?size=1684x806&quality=95&sign=02a4f24f51e9037558449c1527232ba7&type=album)

# Julia (второй случай)
По аналогии с первым случаем описываются переменные. Меняется только функция.


```
function Fun(du, u, p, t)
    M1, M2 = u
    du[1] = u[1]-(b/c1+0.0001)*u[1]*u[2]-a1/c1*u[1]*u[1]
    du[2] = c2/c1*u[2]-b/c1*u[1]*u[2]-a2/c1*u[2]*u[2]
end
```
# Результаты работы кода на Julia

!["Рис.2 График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2 на языке Julia"](https://sun1-86.userapi.com/impg/A49ZBMFwhqzRGd379buq8iUob3CWHS4XefMrJw/gqI81y4J5vY.jpg?size=1684x806&quality=95&sign=b4e198b03f32f0313c481f29e8516624&type=album)


# OpenModelica (первый случай)
```
model lab8_1
Real M1;
Real M2;
Real p_cr = 15;
Real N = 17;
Real q = 1;
Real tau1 = 11;
Real tau2 = 14;
Real p1 = 8;
Real p2 = 6;
Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q); 
Real c1 = (p_cr-p1)/(tau1*p1);
Real c2 = (p_cr-p2)/(tau2*p2);
initial equation
M1 = 2.5;
M2 = 1.5;
equation
der(M1) = M1-b/c1*M1*M2-a1/c1*M1*M1;
der(M2) = c2/c1*M2-b/c1*M1*M2-a2/c1*M2*M2;
end lab8_1;
```

# Результаты работы кода на OpenModelica

!["Рис.3 График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1 на языке OpenModelica"](https://sun9-47.userapi.com/impg/V0zOZJWoiBpV0pklMRIbfF7RdwVVNPl8laclog/tMgINYBQId8.jpg?size=1684x806&quality=95&sign=e7c1e5096982fdd920c9caa7c17efb06&type=album)


# OpenModelica (второй случай)

```
model lab8_2
Real M1;
Real M2;
Real p_cr = 15;
Real N = 17;
Real q = 1;
Real tau1 = 11;
Real tau2 = 17;
Real p1 = 8;
Real p2 = 6;
Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q); 
Real c1 = (p_cr-p1)/(tau1*p1);
Real c2 = (p_cr-p2)/(tau2*p2);
initial equation
M1 = 2.5;
M2 = 1.5;
equation
der(M1) = M1-(b/c1+0.0001)*M1*M2-a1/c1*M1*M1;
der(M2) = c2/c1*M2-b/c1*M1*M2-a2/c1*M2*M2;

end lab8_2;

```

# Результаты работы кода на OpenModelica

!["Рис.4 График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2 на языке OpenModelica"](https://sun9-46.userapi.com/impg/O5O1L8UdCVJ5yGqQ8vtTvE_7iLBZkyF8ZDYBuQ/vFbicnxaG5I.jpg?size=1684x806&quality=95&sign=51600bf6485c3930dc6c31a5f90cc810&type=album)




# Выводы

В ходе проделанной работы были построены:
1. График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1.
2. График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2.
На языке Julia реализация кожа объемнее, чем на языке OpenModelica.


