Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28E7B4A79CC
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 21:55:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238882AbiBBUzB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 15:55:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231705AbiBBUy7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 15:54:59 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAC1FC061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 12:54:59 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id k17so347938plk.0
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 12:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6pomCZJ8fQBNZEi11QpQdWUIN2ynSpkEooX/W2OGDb4=;
        b=Uhv5NuQqBllAbPOeQbafzA5LDxbhukJaJm/FP4bXjWMvlJDZPb/Msrv7R8/Y9Uf7Xu
         irpNyLkGdt5tNiDhUUkUI4wmeNgQGbK2MJ/o3DVF7EtPtKk6AROD4LwFcSoyxE3G1TpH
         Sv+X9gfPvX4n8dMLUydRR1SW3rkIIVhuhQSbcTEuY7kpc6efSvJ2M6qNgHbeWiVr+D7h
         p04Dcoy9gns78Il9DQm5jGCJSFwcPDljGi0yRRa6uMOrpcC7okYrKM1W6iQ9dszz55GK
         r6XTkm7okXJf046/di8L7/nrTaQHuirxsfK5Fdd+H02Ra6gUTJV9XOtTltrEJjPO38qh
         Uw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6pomCZJ8fQBNZEi11QpQdWUIN2ynSpkEooX/W2OGDb4=;
        b=zZuTmVXqjT+tB+Aqaeoe2G+AsLXgjuYc/tkrh8Qb53kBnwXaZ7czrLxGr4NJoDvwz0
         vuwRRn7tx5PB43ot0EHdJZFDbnlV34412zbNwqzQPXa+GsIDhN7sL/mkOYB9aCR4BRBt
         JIW9FN97IlM1znNaKZdq3Q4YEz0bSyZ3EZluunkTN7vM6RijmTmSmalBSJUlIVT9DtiS
         Hs1z+OiKzElzm2F9aKb3dGTgm3cvgVoAoNFwe5sYgpJkSBQBDXPZ7Dvp+m8nAFoaSleG
         Ap3kerYFmKQD+G+Djz46t/V0UZCIOfzr8IGVNetoZmXp8Nu1YZVtOmP1KBj2ZYqPuMvm
         +B4w==
X-Gm-Message-State: AOAM530FBlHnPwqlZwXUD7muoZmEwKDGuSJEPgdmJssINJSgAeoQ72ot
        Abfu6z+6SmS1NpCw6Z2RByORM9GKNmbMWnahZXxTKj/5csc/i/eO
X-Google-Smtp-Source: ABdhPJygGMihWyu49O1Vvkqn7UTFG2h6rMVoGBR3FY2T3nKzUapNA6oXoxGxKUAp/aweFfzRVGaiIm2OMgibMVqXQpg=
X-Received: by 2002:a17:902:b682:: with SMTP id c2mr31550126pls.126.1643835298795;
 Wed, 02 Feb 2022 12:54:58 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYubR5A4f_0hDN1=Jaj_A-0GhMAcTc+TfJb5sgf0hRik8Q@mail.gmail.com>
 <0b6ab190-4c35-94fc-6565-6382d461ae84@gmail.com>
In-Reply-To: <0b6ab190-4c35-94fc-6565-6382d461ae84@gmail.com>
From:   Brendan Higgins <brendanhiggins@google.com>
Date:   Wed, 2 Feb 2022 15:54:47 -0500
Message-ID: <CAFd5g44U54P3=JxpiBhXKeqXFACRe08AYvBxDN2h=W4d_+bP3g@mail.gmail.com>
Subject: Re: Device Tree runtime unit tests: Harmonisation
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     Naresh Kamboju <naresh.kamboju@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 2, 2022 at 1:38 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 2/2/22 5:31 AM, Naresh Kamboju wrote:
> > Linaro started doing Linux kernel Functional Validation (LKFT).
> > As part of LKFT recently we have enabled CONFIG_OF_UNITTEST=y in our
> > daily test CI.
> >
> > The output of the test looks as below. The current problem is that we
> > have a hard time to see (grep) pass/fail for each individual test. We
> > only see a summary at the end with x pass and y fails.
>
> The FAIL messages are printed at loglevel KERN_ERR.  The pass messages
> are printed at loglevel KERN_DEBUG.  To see the pass messages, set the
> loglevel to allow debug output.
>
> Unfortunately this can add lots of debug output, unless you use dynamic
> debug to only enable debug for drivers/of/unittest.o.  There are only
> a few other pr_debug() messages in unittest.
>
> I think a better solution would be to add a config option, something
> like CONFIG_OF_UNITTEST_VERBOSE, that would print the pass messages
> at loglevel KERN_ERR.  I'll submit a patch for that and see what the
> review responses are.
>
> > We would like to get your opinion of how hard it would be to include
> > that in the output per test. Maybe like TAP version 14?
> > Another question would be how hard do you think it would be to rewrite
> > this to a kunit test, if even applicable? I have provided the kunit
> > output links at the end of this email.
>
> Devicetree unittests were suggested as a good candidate as a first
> test to convert to kunit when kunit was implemented.  Brendan tried
> to convert it, and we quickly saw that it was not a good candidate.
> Devicetree unittests do not fit the unit test mold; they are a very
> different creature.  Brendan has a good term for this type of test
> (Brendan, was it "acceptance" test?).

I understood that it was either an integration test or end-to-end test
(probably an integration test): https://lkml.org/lkml/2019/3/21/1124

Standardizing integration tests in the kernel is still something that
hasn't happened yet, but there are some examples of integration tests
being written in KUnit (the KASAN KUnit test is probably the most
notable example). There are definitely some others written in
kselftest. It's kind of a tough area because integration tests are
kind of defined by being in between unit tests and end-to-end tests.

> > Test output:
> > ------------
> > [    0.000000] Booting Linux on physical CPU 0x0000000100 [0x410fd033]
> > [    0.000000] Linux version 5.17.0-rc1-next-20220127
> > (tuxmake@tuxmake) (aarch64-linux-gnu-gcc (Debian 11.2.0-9) 11.2.0, GNU
> > ld (GNU Binutils for Debian) 2.37) #1 SMP PREEMPT @1643255563
> > [    0.000000] Machine model: ARM Juno development board (r2)
> >
> > <trimmed output>
> >
> > [    3.285226] ### dt-test ### start of unittest - you will see error messages
> > [    3.293269] ### dt-test ### EXPECT \ : Duplicate name in
> > testcase-data, renamed to \"duplicate-name#1\"
> > [    3.293456] Duplicate name in testcase-data, renamed to \"duplicate-name#1\"
> > [    3.313367] ### dt-test ### EXPECT / : Duplicate name in
> > testcase-data, renamed to \"duplicate-name#1\"
> > [    3.314709] ### dt-test ### EXPECT \ : OF:
> > /testcase-data/phandle-tests/consumer-a: could not get
> > #phandle-cells-missing for /testcase-data/phandle-tests/provider1
> > [    3.323968] OF: /testcase-data/phandle-tests/consumer-a: could not
> > get #phandle-cells-missing for /testcase-data/phandle-tests/provider1
> >
> > <trimmed output>
> >
> > [    5.118400] ### dt-test ### EXPECT / : OF: overlay: ERROR: multiple
> > fragments add and/or delete node
> > /testcase-data-2/substation@100/motor-1/electric
> > [    5.121358] atkbd serio1: keyboard reset failed on 1c070000.kmi
> > [    5.134160] ### dt-test ### end of unittest - 257 passed, 0 failed
> >
> >
> > Ref:
> > Full test output of of-unittest
> > https://lkft.validation.linaro.org/scheduler/job/4458582#L1019
> > https://lkft.validation.linaro.org/scheduler/job/4404330#L428
> >
> > Kunit example test output that we are running in our daily CI loop.
> > https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.10.y/build/v5.10.70/testrun/5965109/suite/kunit/tests/
> >
> > Kunit Full test logs:
> > https://lkft.validation.linaro.org/scheduler/job/3643324
> >
> > https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.10.y/build/v5.10.70/testrun/5965109/suite/kunit/test/kunit_log_test/log
> >
> >
> > --
> > Linaro LKFT
> > https://lkft.linaro.org
> >
>
