BEGIN{
printf "function add(x,y){ printf \"( %s + %s )\" x , y }\\n"
printf "function sub(x,y){ printf \"( %s - %s )\" x , y }\\n"
printf "function mult(x,y){ printf \"( %s * %s )\" x , y }\\n"
printf "function div(x,y){ printf \"( %s / %s )\" x , y }\\n"
printf "function mod(x,y){ printf \"( %s \% %s )\" x , y }\\n"
printf "function pow(x,y){ printf \"( %s ^ %s )\" x , y }\\n"
printf "function less(x,y){ printf \"( %s < %s )\" x , y }\\n"
printf "function equal(x,y){ printf \"( %s == %s )\" x , y }\\n"
printf "function not(x){ printf \"( !%s )\" x }\\n"
printf "function or(x,y){ printf \"( %s || %s )\" x , y }\\n"
printf "function display(x){ printf \"%s\" x }\\n"
printf "function concat(x,y){ printf \"%s %s\" x , y }\\n"
printf "function assign(x,y){ printf \"( %s = %s ;)\" x , y }\\n"
printf "function access(x,y){ printf \"%s[%s]\" x , y }\\n"
printf "function mod(x,y){ printf \"( %s %% %s )\" x , y }\\n"
}
{print $0}
END{
printf "%s" "END{main()}"
}
