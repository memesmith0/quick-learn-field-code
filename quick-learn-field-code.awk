BEGIN{
printf "function add(x,y){ printf \"( %s + %s )\" x , y }
printf "function sub(x,y){ printf \"( %s - %s )\" x , y }
printf "function mult(x,y){ printf \"( %s * %s )\" x , y }
printf "function div(x,y){ printf \"( %s / %s )\" x , y }
printf "function mod(x,y){ printf \"( %s % %s )\" x , y }
printf "function pow(x,y){ printf \"( %s ^ %s )\" x , y }
printf "function less(x,y){ printf \"( %s < %s )\" x , y }
printf "function equal(x,y){ printf \"( %s == %s )\" x , y }
printf "function not(x,y){ printf \"( !%s )\" x }
printf "function or(x,y){ printf \"( %s || %s )\" x , y }
printf "function display(x){ printf \"%s\" x }
printf "function concat(x,y){ printf \"%s %s\" x , y }
printf "function assign(x,y){ printf \"( %s = %s ;)\" x , y }
printf "function access(x,y){ printf \"%s[%s]\" x , y }
}
{print $0}
END{
printf "%s" "END{main()}"
}
