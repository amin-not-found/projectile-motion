# Projectile Motion
Kinematic equation for an object with constant acceleration is as below:

$$ \vec{r}(t) = \frac{1}{2}\vec{a}t^2 + \vec{v_0}t + \vec{r_0} \tag1 $$

given that $\vec{r}(t)$ is a vector representing the position of the object.

We can get the velocity of two objects after impact using this equation:

$$ e = \frac{v_1' - v_2'}{v_2 - v_1} \tag2 $$

where $e$ is the coefficient of restitution and $v_1, v_2$ refer to velocity of objects before the impact and $v'_1, v_2'$ refer to the their velocity after it in the direction normal to the impact axis.

For our case as the projectile is gonna hit the ground, the impact axis is gonna be the horizontal axis and one of the two objects in the equation $(2)$ is will have zero velocity before and after the impact. So we can simplify the equation to:

$$ v_y' = -ev_y \tag3 $$

where $v$ is the velocity of our projectile. Also it's worth mentioning that the velocity is gonna stay the same along the x axis.

To keep this small MATLAB program simple, it calculates position of projectile in every time step using equation $(1)$ and doesn't accumulate position with velocity in each step as that would require using a numerical integrator.
But this also means we can't change velocity of the projectile in any other way that changing its starting velocity and position. And we know that $v = at + v_0$ in motion with constant acceleration. So after each impact we will have:
$$ {v_y}_0 = -e (a_yt+{v_y}_0) $$

$$ \vec{r_0} = \vec{r}(t) $$
and then we will consider impact's time frime our new origin of time.
