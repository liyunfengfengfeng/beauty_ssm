package com.yingjun.ssm.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;


/**
 * @author liyunfeng
 *
 * 采用AOP的方式检查用户是否登录。
 */
@Component
@Aspect
public class BindingResultAop {

    private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Pointcut("execution(* com.yingjun.ssm.web.*.*(..))")
    public void aopMethod(){}

    @Around("aopMethod()")
    public Object  around(ProceedingJoinPoint joinPoint) throws Throwable{
        LOG.info("采用AOP的方式检查用户是否登录");

        return joinPoint.proceed();
    }
}
