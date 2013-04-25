---
layout      : post
tage        : [matlab, coding, testing]
title       : Matlab R2013a Unit Test / Matlab R2013a 单元测试
description : Classes, How-tos and Examples
---
[Unit Testing Framework](http://www.mathworks.com/help/matlab/matlab-unit-test-framework.html) 单元测试框架
===========================================================================================================
Write and run tests for MATLAB® programs  
为MATLAB程序编写和运行测试

+ [Write Unit Tests](http://www.mathworks.com/help/matlab/write-unit-tests.html) 编写单元测试  
Assemble test methods into test-case classes  
将各个测试方法组合成测试用例类

+ [Run Unit Tests](http://www.mathworks.com/help/matlab/run-unit-tests.html) 运行单元测试  
Run test suites in the testing framework  
在测试框架中运行测试用例集

+ [Analyze Test Results](http://www.mathworks.com/help/matlab/analyze-test-results.html) 分析测试结果  
Use test results to identify failures  
使用测试结果来分析程序

[Write Unit Tests](http://www.mathworks.com/help/matlab/write-unit-tests.html) 编写单元测试  
===========================================================================================
Assemble test methods into test-case classes  
将各个测试方法组合成测试用例类 

The _matlab.unittest_ package is an xUnit-style, unit-testing framework for MATLAB®. To test a MATLAB program, write a test case using qualifications, which are methods for testing values and responding to failures. The test case contains test functions and test fixtures (setup and teardown code).  
_matlab.unittest_包是xUnit风格的matlab程序测试框架。

### Classes 类   
> [_matlab.unittest.TestCase_](http://www.mathworks.com/help/matlab/ref/matlab.unittest.testcaseclass.html)  
> Superclass of all _matlab.unittest_ test classes  
> 所有_matlab.unittest_测试类的基类

### Examples and How To  例子与指南
[Write Simple Test Case](http://www.mathworks.com/help/matlab/matlab_prog/write-a-simple-test-case.html) 编写简单的测试用例  
[Write Setup and Teardown Code](http://www.mathworks.com/help/matlab/matlab_prog/test-unit-fixtures.html) 编写前置与收尾代码  
[Select Qualification Type](http://www.mathworks.com/help/matlab/matlab_prog/select-qualification-type.html) 选择检验类型   
[Write Test Methods Using Verifications](http://www.mathworks.com/help/matlab/matlab_prog/write-test-using-verifications.html) 使用验证（检验类型）编写测试方法  
[Write TestClassSetup Method Using Assumptions](http://www.mathworks.com/help/matlab/matlab_prog/write-test-using-assumptions.html) 使用断言（检验类型）编写前置测试方法  
[Test for Preconditions Using Assertions](http://www.mathworks.com/help/matlab/matlab_prog/write-test-using-assertions.html) 使用断言测试前置条件  
[Write Helper Function Using Fatal Assertions](http://www.mathworks.com/help/matlab/matlab_prog/write-test-using-fatal-assertions.html) 使用关键性断言编写辅助函数  

### Concepts 概念  

[_matlab.unittest_ Package](http://www.mathworks.com/help/matlab/matlab_prog/contents-of-matlab-unittest-package.html) _matlab.unittest_包  
[Qualifications Interface](http://www.mathworks.com/help/matlab/matlab_prog/test-unit-qualifications.html) 检验接口  
[Constraints Interface](http://www.mathworks.com/help/matlab/matlab_prog/when-to-use-constaints.html) 限制条件接口  
[Diagnostics Interface](http://www.mathworks.com/help/matlab/matlab_prog/when-to-use-diagnostics.html) 诊断结构  

### Related Information 相关信息  

<http://en.wikipedia.org/wiki/XUnit>  
<http://xunitpatterns.com/Four%20Phase%20Test.html>  

