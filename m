Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BD874A7819
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 19:38:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236943AbiBBSie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 13:38:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231148AbiBBSid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 13:38:33 -0500
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D35E4C061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 10:38:33 -0800 (PST)
Received: by mail-qv1-xf2a.google.com with SMTP id a7so440364qvl.1
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 10:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=98ZQtACyDUdLNMC737dmp8Wb17Ec1VICFzmgNxPEI0c=;
        b=UtCSi/7oAfKCrDzG0iJpRRegXpkUP5XVLEW0Ji5nAyeGMFP5xN5UoLoTS/JduoLCV4
         kyRUX6RANF6/5D3ytmewY1PBuTuGOx1lVkZ3RCGbhv7PeRuG6J7U8089Oyh9rI8y0Ecy
         4dsyLct3+elLpXK/x2VTrh2N7xfQ1f7TkSiyMFl8WRK/kldjhFYlYHOkAEUwgkZLxIqj
         RyYkrPavoNR+dq0ehqqmBDEaE8fnhfQE14UpGAawoVNY0ckS92I0TNuK9u13JiNbTTnz
         0/hDmNMqIyFv28n0UCFy2lWhZw1THCYxLX9RX84Nzep4RMS6nrZi2D5/w2p5ZAL86r2P
         xR2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=98ZQtACyDUdLNMC737dmp8Wb17Ec1VICFzmgNxPEI0c=;
        b=vZ3UjVXD9jD7RQZ42VwuF2Ce+NCw5tqsehwHEVaAFfprthRzg1JcTAZJuHqsy/ymyV
         A0aU5NVAsdgtCDGe/CtOztKKVMI2krJ5htADkuKQE6OuminmzUuYbN862/t1/fcmBZov
         gMLfok2Htdt/Vb9fZb58c5gNpGj7v32/jOS5DCGKbo3OLIos6jt1cZTPBAviCMbpLvDR
         XO+8BCVE7p06CsWyrgnhQbU+7WowKALMEDgaYRjSRaNrhnwnGn4W/pBwKBPgVGwnV2x/
         KkNY99xnoLzY6HhIrk/yDiIoJp1U2/boDCR71agY7C36NMpEgKBnCon4kN9nmr87yoeq
         xrdQ==
X-Gm-Message-State: AOAM530sY//olDS3q1/Wp7CIwPpnpZWXRR2lC5gSrcGqdNyQZx2Cg1nU
        pu6dhljpyqISXdAI5bBC/SQ=
X-Google-Smtp-Source: ABdhPJwPdsQl4yNn3an6fjHTjJBYZKoy8zC6BwWt0rqw/o98luMhh6WS1MAYOSkNwRgxk96v/Ig6HQ==
X-Received: by 2002:a05:6214:e8e:: with SMTP id hf14mr27695136qvb.84.1643827112986;
        Wed, 02 Feb 2022 10:38:32 -0800 (PST)
Received: from [192.168.1.49] (c-67-187-90-124.hsd1.ky.comcast.net. [67.187.90.124])
        by smtp.gmail.com with ESMTPSA id bm23sm13118875qkb.25.2022.02.02.10.38.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 10:38:32 -0800 (PST)
Subject: Re: Device Tree runtime unit tests: Harmonisation
To:     Naresh Kamboju <naresh.kamboju@linaro.org>,
        Brendan Higgins <brendanhiggins@google.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Anders Roxell <anders.roxell@linaro.org>
References: <CA+G9fYubR5A4f_0hDN1=Jaj_A-0GhMAcTc+TfJb5sgf0hRik8Q@mail.gmail.com>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <0b6ab190-4c35-94fc-6565-6382d461ae84@gmail.com>
Date:   Wed, 2 Feb 2022 12:38:31 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CA+G9fYubR5A4f_0hDN1=Jaj_A-0GhMAcTc+TfJb5sgf0hRik8Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/2/22 5:31 AM, Naresh Kamboju wrote:
> Linaro started doing Linux kernel Functional Validation (LKFT).
> As part of LKFT recently we have enabled CONFIG_OF_UNITTEST=y in our
> daily test CI.
> 
> The output of the test looks as below. The current problem is that we
> have a hard time to see (grep) pass/fail for each individual test. We
> only see a summary at the end with x pass and y fails.

The FAIL messages are printed at loglevel KERN_ERR.  The pass messages
are printed at loglevel KERN_DEBUG.  To see the pass messages, set the
loglevel to allow debug output.

Unfortunately this can add lots of debug output, unless you use dynamic
debug to only enable debug for drivers/of/unittest.o.  There are only
a few other pr_debug() messages in unittest.

I think a better solution would be to add a config option, something
like CONFIG_OF_UNITTEST_VERBOSE, that would print the pass messages
at loglevel KERN_ERR.  I'll submit a patch for that and see what the
review responses are.

> We would like to get your opinion of how hard it would be to include
> that in the output per test. Maybe like TAP version 14?
> Another question would be how hard do you think it would be to rewrite
> this to a kunit test, if even applicable? I have provided the kunit
> output links at the end of this email.

Devicetree unittests were suggested as a good candidate as a first
test to convert to kunit when kunit was implemented.  Brendan tried
to convert it, and we quickly saw that it was not a good candidate.
Devicetree unittests do not fit the unit test mold; they are a very
different creature.  Brendan has a good term for this type of test
(Brendan, was it "acceptance" test?).

> 
> 
> Test output:
> ------------
> [    0.000000] Booting Linux on physical CPU 0x0000000100 [0x410fd033]
> [    0.000000] Linux version 5.17.0-rc1-next-20220127
> (tuxmake@tuxmake) (aarch64-linux-gnu-gcc (Debian 11.2.0-9) 11.2.0, GNU
> ld (GNU Binutils for Debian) 2.37) #1 SMP PREEMPT @1643255563
> [    0.000000] Machine model: ARM Juno development board (r2)
> 
> <trimmed output>
> 
> [    3.285226] ### dt-test ### start of unittest - you will see error messages
> [    3.293269] ### dt-test ### EXPECT \ : Duplicate name in
> testcase-data, renamed to \"duplicate-name#1\"
> [    3.293456] Duplicate name in testcase-data, renamed to \"duplicate-name#1\"
> [    3.313367] ### dt-test ### EXPECT / : Duplicate name in
> testcase-data, renamed to \"duplicate-name#1\"
> [    3.314709] ### dt-test ### EXPECT \ : OF:
> /testcase-data/phandle-tests/consumer-a: could not get
> #phandle-cells-missing for /testcase-data/phandle-tests/provider1
> [    3.323968] OF: /testcase-data/phandle-tests/consumer-a: could not
> get #phandle-cells-missing for /testcase-data/phandle-tests/provider1
> 
> <trimmed output>
> 
> [    5.118400] ### dt-test ### EXPECT / : OF: overlay: ERROR: multiple
> fragments add and/or delete node
> /testcase-data-2/substation@100/motor-1/electric
> [    5.121358] atkbd serio1: keyboard reset failed on 1c070000.kmi
> [    5.134160] ### dt-test ### end of unittest - 257 passed, 0 failed
> 
> 
> Ref:
> Full test output of of-unittest
> https://lkft.validation.linaro.org/scheduler/job/4458582#L1019
> https://lkft.validation.linaro.org/scheduler/job/4404330#L428
> 
> Kunit example test output that we are running in our daily CI loop.
> https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.10.y/build/v5.10.70/testrun/5965109/suite/kunit/tests/
> 
> Kunit Full test logs:
> https://lkft.validation.linaro.org/scheduler/job/3643324
> 
> https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.10.y/build/v5.10.70/testrun/5965109/suite/kunit/test/kunit_log_test/log
> 
> 
> --
> Linaro LKFT
> https://lkft.linaro.org
> 

