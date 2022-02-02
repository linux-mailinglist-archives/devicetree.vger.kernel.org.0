Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 004F34A6FFC
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 12:31:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343894AbiBBLbW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 06:31:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245225AbiBBLbW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 06:31:22 -0500
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5E5FC061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 03:31:21 -0800 (PST)
Received: by mail-yb1-xb31.google.com with SMTP id k31so60051358ybj.4
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 03:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=8fPR+jpOXjvkaOGWP3RU3mWGeaJ0A+vIt5yODo114Fw=;
        b=GBSsLL+O4rIjrKZmb2AJ5Bg+tLaXBOXFq0DQeI/Ev75ko5VF0a4CI+Qo+R8ENyowo5
         SoBLF23AxxCMQQLI4WIPFEcyaGzyQOban+M9oSGVY5KjDR9QcivOpsJZ7lNZQtPO4V1e
         vPGgXnxdwE/tMMkEvQLc1+XI2KMb0X75KliOQ5hL9gZ3uKdNQxbuakYwvcx8BdYp78de
         MAtigzjk5A1L5W8yb8EpW4oRC2FiNb3CXYu9cggWgI2osKC4Pt8ledmHbAm2CV5VOh0v
         83eOmsDueKoH+DibPF8p3stePzNRQ5Ga2ovsfRHM9VDsh1Xw9ajNPK9dNVO4bAyEjW9J
         RV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=8fPR+jpOXjvkaOGWP3RU3mWGeaJ0A+vIt5yODo114Fw=;
        b=cxY1Rijg8lUgDhcet61TLomTlW1ZTXNPMEcdZUw2b9imr2MDVBlRFM4QQ6aA5Qufo8
         0zwf91dIYb34eFaNBcs9UsPIh7znuFHjr5eWm3LZlPoSI+gP4mEDgx7vSPspiJAquTgs
         QG6CQdoXlQzNGPyw3TF5y2yAlNTkiOnuNJg3kq4Cql3Z8Ss5WIFd/w70qyKVPAp6by3/
         L33gbmE4EZIZ6jKBz+7aaPGIZk7qf+5I3kZyJRmdWkaJXjWGj1TcUyVVPCROY+koZt46
         AvQ9KcIroQnMmvrN1NNvAapGn/y6YZTiawijTz2gf/WYW4M18QP7XmmoDaImz0V/gNeS
         +9zA==
X-Gm-Message-State: AOAM532ILNVii4JHD5dsFIw/bUSUqiFjJeD8Giqw/W8OHCOkv9B4ihof
        ediGF7iAi/n+X5eCWPfgPu5HySh94pc0g0SjftyJCA==
X-Google-Smtp-Source: ABdhPJyT7ZdIkMZT8vePavI5jDBaqd8zI6rl3D3Wbe83kzLkYMje9kBYkdrb2rPx1bDzgONP5zLf2/W+9pymt8QIYQQ=
X-Received: by 2002:a25:97c4:: with SMTP id j4mr43491199ybo.108.1643801480998;
 Wed, 02 Feb 2022 03:31:20 -0800 (PST)
MIME-Version: 1.0
From:   Naresh Kamboju <naresh.kamboju@linaro.org>
Date:   Wed, 2 Feb 2022 17:01:09 +0530
Message-ID: <CA+G9fYubR5A4f_0hDN1=Jaj_A-0GhMAcTc+TfJb5sgf0hRik8Q@mail.gmail.com>
Subject: Device Tree runtime unit tests: Harmonisation
To:     Brendan Higgins <brendanhiggins@google.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Linaro started doing Linux kernel Functional Validation (LKFT).
As part of LKFT recently we have enabled CONFIG_OF_UNITTEST=y in our
daily test CI.

The output of the test looks as below. The current problem is that we
have a hard time to see (grep) pass/fail for each individual test. We
only see a summary at the end with x pass and y fails.
We would like to get your opinion of how hard it would be to include
that in the output per test. Maybe like TAP version 14?
Another question would be how hard do you think it would be to rewrite
this to a kunit test, if even applicable? I have provided the kunit
output links at the end of this email.


Test output:
------------
[    0.000000] Booting Linux on physical CPU 0x0000000100 [0x410fd033]
[    0.000000] Linux version 5.17.0-rc1-next-20220127
(tuxmake@tuxmake) (aarch64-linux-gnu-gcc (Debian 11.2.0-9) 11.2.0, GNU
ld (GNU Binutils for Debian) 2.37) #1 SMP PREEMPT @1643255563
[    0.000000] Machine model: ARM Juno development board (r2)

<trimmed output>

[    3.285226] ### dt-test ### start of unittest - you will see error messages
[    3.293269] ### dt-test ### EXPECT \ : Duplicate name in
testcase-data, renamed to \"duplicate-name#1\"
[    3.293456] Duplicate name in testcase-data, renamed to \"duplicate-name#1\"
[    3.313367] ### dt-test ### EXPECT / : Duplicate name in
testcase-data, renamed to \"duplicate-name#1\"
[    3.314709] ### dt-test ### EXPECT \ : OF:
/testcase-data/phandle-tests/consumer-a: could not get
#phandle-cells-missing for /testcase-data/phandle-tests/provider1
[    3.323968] OF: /testcase-data/phandle-tests/consumer-a: could not
get #phandle-cells-missing for /testcase-data/phandle-tests/provider1

<trimmed output>

[    5.118400] ### dt-test ### EXPECT / : OF: overlay: ERROR: multiple
fragments add and/or delete node
/testcase-data-2/substation@100/motor-1/electric
[    5.121358] atkbd serio1: keyboard reset failed on 1c070000.kmi
[    5.134160] ### dt-test ### end of unittest - 257 passed, 0 failed


Ref:
Full test output of of-unittest
https://lkft.validation.linaro.org/scheduler/job/4458582#L1019
https://lkft.validation.linaro.org/scheduler/job/4404330#L428

Kunit example test output that we are running in our daily CI loop.
https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.10.y/build/v5.10.70/testrun/5965109/suite/kunit/tests/

Kunit Full test logs:
https://lkft.validation.linaro.org/scheduler/job/3643324

https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.10.y/build/v5.10.70/testrun/5965109/suite/kunit/test/kunit_log_test/log


--
Linaro LKFT
https://lkft.linaro.org
