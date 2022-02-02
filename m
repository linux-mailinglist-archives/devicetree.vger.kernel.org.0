Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 061804A7AC2
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 23:04:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347775AbiBBWE1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 17:04:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235073AbiBBWE1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 17:04:27 -0500
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com [IPv6:2607:f8b0:4864:20::832])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91F40C061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 14:04:26 -0800 (PST)
Received: by mail-qt1-x832.google.com with SMTP id b5so520213qtq.11
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 14:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=juSv3A3zA/IV1hKWpoPZ41zBlXOU2nAmqhVo+hgk77k=;
        b=G/mmcX5aPLULdEJEs9m+s3snNReQNxbTdU2CRfpjt4nKP4XFlf+T6dU9eX+gZk81uc
         1WciFyM4gwnN+8OFjInCsXgX/+lMc+tWYXi9YyMPohe52Cvb6xHY89PtPyd+FJYo1L4t
         TOyiHj3OqlC58PYytawZDPYFR81BASjf9fcKXqQT/5d0nQLVGItXQ5sinDKvx0gLc/3x
         gM8b1MuGTV1yRtq+3sMdsvIqZBA1/xphZ2Sfuy2UTGmU8vnsr4ZPjzB43NEd77doeEjU
         7wszNcEurpwlT4KKTzVotVTu8omrxv1CsqXhtOorMfXBhBiehu2ImAvLKiDeYt6r/1vI
         DN7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=juSv3A3zA/IV1hKWpoPZ41zBlXOU2nAmqhVo+hgk77k=;
        b=QXL/J/DopJei6Ppr299P5BlYcni+pSPNhgGaPpY0f/5nFVwM6uV4qV6fy+yIQnNDMu
         kqLs3jKguUvDpKE3wkPZjZQ0IT1naNVMSXBEZ30PXFLLtN5UzsI35mWCopK/ln8AHeUq
         tIUIOnKOqOWo/TIM02X/1L+htZ9pw7rDVbDaJabYPia26b6v8otERZEzdnHAHjfDgu3Z
         EMVlAsuawQUF34yppoImSV4VoayNVho/V23U/E6jPnuH99NU89EXTKubrOKttJH14zQb
         DajUuv8Bhgs0MGwB4aaok38VZCDpUd1iY3xcDOhx+pO3QLULLJJqIB19z8SJwBNf5fOQ
         qCbg==
X-Gm-Message-State: AOAM533xa3D3QGp7JK3o27hVi0LKFDUnBbVKm/FLLPDZDKSuG9o2jNHz
        e20v9NVayvTSz72OkUiU7Lg=
X-Google-Smtp-Source: ABdhPJwdQbn2XZ/Q7CtuzJLEol5fv2GmfEKwXbN1vAjV/mGyxEy/PeTOGgbtQb1k5Dltt/mRQDFpiA==
X-Received: by 2002:a05:622a:646:: with SMTP id a6mr6368577qtb.77.1643839465659;
        Wed, 02 Feb 2022 14:04:25 -0800 (PST)
Received: from [192.168.1.49] (c-67-187-90-124.hsd1.tn.comcast.net. [67.187.90.124])
        by smtp.gmail.com with ESMTPSA id g11sm10320163qtg.49.2022.02.02.14.04.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 14:04:25 -0800 (PST)
Subject: Re: Device Tree runtime unit tests: Harmonisation
To:     Brendan Higgins <brendanhiggins@google.com>
Cc:     Naresh Kamboju <naresh.kamboju@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Anders Roxell <anders.roxell@linaro.org>
References: <CA+G9fYubR5A4f_0hDN1=Jaj_A-0GhMAcTc+TfJb5sgf0hRik8Q@mail.gmail.com>
 <0b6ab190-4c35-94fc-6565-6382d461ae84@gmail.com>
 <CAFd5g44U54P3=JxpiBhXKeqXFACRe08AYvBxDN2h=W4d_+bP3g@mail.gmail.com>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <e5c1ca0c-0282-27e2-a470-756fbd2c7f84@gmail.com>
Date:   Wed, 2 Feb 2022 16:04:24 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g44U54P3=JxpiBhXKeqXFACRe08AYvBxDN2h=W4d_+bP3g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/2/22 2:54 PM, Brendan Higgins wrote:
> On Wed, Feb 2, 2022 at 1:38 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>
>> On 2/2/22 5:31 AM, Naresh Kamboju wrote:
>>> Linaro started doing Linux kernel Functional Validation (LKFT).
>>> As part of LKFT recently we have enabled CONFIG_OF_UNITTEST=y in our
>>> daily test CI.
>>>
>>> The output of the test looks as below. The current problem is that we
>>> have a hard time to see (grep) pass/fail for each individual test. We
>>> only see a summary at the end with x pass and y fails.
>>
>> The FAIL messages are printed at loglevel KERN_ERR.  The pass messages
>> are printed at loglevel KERN_DEBUG.  To see the pass messages, set the
>> loglevel to allow debug output.
>>
>> Unfortunately this can add lots of debug output, unless you use dynamic
>> debug to only enable debug for drivers/of/unittest.o.  There are only
>> a few other pr_debug() messages in unittest.
>>
>> I think a better solution would be to add a config option, something
>> like CONFIG_OF_UNITTEST_VERBOSE, that would print the pass messages
>> at loglevel KERN_ERR.  I'll submit a patch for that and see what the
>> review responses are.
>>
>>> We would like to get your opinion of how hard it would be to include
>>> that in the output per test. Maybe like TAP version 14?
>>> Another question would be how hard do you think it would be to rewrite
>>> this to a kunit test, if even applicable? I have provided the kunit
>>> output links at the end of this email.
>>
>> Devicetree unittests were suggested as a good candidate as a first
>> test to convert to kunit when kunit was implemented.  Brendan tried
>> to convert it, and we quickly saw that it was not a good candidate.
>> Devicetree unittests do not fit the unit test mold; they are a very
>> different creature.  Brendan has a good term for this type of test
>> (Brendan, was it "acceptance" test?).
> 
> I understood that it was either an integration test or end-to-end test
> (probably an integration test): https://lkml.org/lkml/2019/3/21/1124

Yes, thanks.  Those are the terms I was trying to remember.

-Frank

> 
> Standardizing integration tests in the kernel is still something that
> hasn't happened yet, but there are some examples of integration tests
> being written in KUnit (the KASAN KUnit test is probably the most
> notable example). There are definitely some others written in
> kselftest. It's kind of a tough area because integration tests are
> kind of defined by being in between unit tests and end-to-end tests.
> 
>>> Test output:
>>> ------------
>>> [    0.000000] Booting Linux on physical CPU 0x0000000100 [0x410fd033]
>>> [    0.000000] Linux version 5.17.0-rc1-next-20220127
>>> (tuxmake@tuxmake) (aarch64-linux-gnu-gcc (Debian 11.2.0-9) 11.2.0, GNU
>>> ld (GNU Binutils for Debian) 2.37) #1 SMP PREEMPT @1643255563
>>> [    0.000000] Machine model: ARM Juno development board (r2)
>>>
>>> <trimmed output>
>>>
>>> [    3.285226] ### dt-test ### start of unittest - you will see error messages
>>> [    3.293269] ### dt-test ### EXPECT \ : Duplicate name in
>>> testcase-data, renamed to \"duplicate-name#1\"
>>> [    3.293456] Duplicate name in testcase-data, renamed to \"duplicate-name#1\"
>>> [    3.313367] ### dt-test ### EXPECT / : Duplicate name in
>>> testcase-data, renamed to \"duplicate-name#1\"
>>> [    3.314709] ### dt-test ### EXPECT \ : OF:
>>> /testcase-data/phandle-tests/consumer-a: could not get
>>> #phandle-cells-missing for /testcase-data/phandle-tests/provider1
>>> [    3.323968] OF: /testcase-data/phandle-tests/consumer-a: could not
>>> get #phandle-cells-missing for /testcase-data/phandle-tests/provider1
>>>
>>> <trimmed output>
>>>
>>> [    5.118400] ### dt-test ### EXPECT / : OF: overlay: ERROR: multiple
>>> fragments add and/or delete node
>>> /testcase-data-2/substation@100/motor-1/electric
>>> [    5.121358] atkbd serio1: keyboard reset failed on 1c070000.kmi
>>> [    5.134160] ### dt-test ### end of unittest - 257 passed, 0 failed
>>>
>>>
>>> Ref:
>>> Full test output of of-unittest
>>> https://lkft.validation.linaro.org/scheduler/job/4458582#L1019
>>> https://lkft.validation.linaro.org/scheduler/job/4404330#L428
>>>
>>> Kunit example test output that we are running in our daily CI loop.
>>> https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.10.y/build/v5.10.70/testrun/5965109/suite/kunit/tests/
>>>
>>> Kunit Full test logs:
>>> https://lkft.validation.linaro.org/scheduler/job/3643324
>>>
>>> https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.10.y/build/v5.10.70/testrun/5965109/suite/kunit/test/kunit_log_test/log
>>>
>>>
>>> --
>>> Linaro LKFT
>>> https://lkft.linaro.org
>>>
>>

