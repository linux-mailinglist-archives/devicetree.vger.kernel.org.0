Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA4594A7966
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 21:29:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346772AbiBBU3p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 15:29:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230454AbiBBU3o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 15:29:44 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62DF9C061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 12:29:44 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C33ED619B2
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 20:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2455DC36AE2
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 20:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643833783;
        bh=nJH6rVM8MDUbnfSWNRBmr0etFSlVO4c4Ki9vZ6TwG7g=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=u5ib7mD26xIUfq2KPvC1V/8PF8nmBgn3xcc+A0K4OTpugWSNhW6p/Q0H0N/JKoEbD
         E+gwGhVzOtVfz95F7KZWopEN3nCn5zYBvCZ+QwSwCwtFnofCnsDZqqowMMxVlmj8JR
         qSvNt7i1GB1l+VjIayaqJG1pQLSd7Sgn/N6hT0QiaU7vpdNBKpE4XaRu80M7c9SvfU
         pWbypo2fIN9MIvDjeBNqjNo2wNjJgdDwpqUGsep6ZdZz7Ql6sEDs6tyakJDlcOPhrZ
         Jd4c20IH3ExxqDWoEoBCFlRxygHlqg2sPK020osgXgfA6i9UIZOkWvnPhS9DG4GNrl
         8OlGtCMuMqmJw==
Received: by mail-ed1-f47.google.com with SMTP id p7so869919edc.12
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 12:29:43 -0800 (PST)
X-Gm-Message-State: AOAM5322YmM3ctyXFUivtZsrNDRi25Nj4kXhr3/TuPnFHVWNlh6Xu32c
        PT+XSMjjrKPbgHFV3fDsjVy3c0OPYZFx0fay6w==
X-Google-Smtp-Source: ABdhPJyfjWlZ1BK4CIrbrhXMYxr+kt47QtRwEGnSq6cgVKctspoHaA4H1x1b6fGZQs6Lv3+eCgzBtrB+LTQfA+xrADc=
X-Received: by 2002:aa7:df19:: with SMTP id c25mr32284892edy.157.1643833781381;
 Wed, 02 Feb 2022 12:29:41 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYubR5A4f_0hDN1=Jaj_A-0GhMAcTc+TfJb5sgf0hRik8Q@mail.gmail.com>
 <0b6ab190-4c35-94fc-6565-6382d461ae84@gmail.com>
In-Reply-To: <0b6ab190-4c35-94fc-6565-6382d461ae84@gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 2 Feb 2022 14:29:29 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLnv_=mcs+pAXRArSg7uccPFpDhcbBOpHGaWwjOZdt9DQ@mail.gmail.com>
Message-ID: <CAL_JsqLnv_=mcs+pAXRArSg7uccPFpDhcbBOpHGaWwjOZdt9DQ@mail.gmail.com>
Subject: Re: Device Tree runtime unit tests: Harmonisation
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     Naresh Kamboju <naresh.kamboju@linaro.org>,
        Brendan Higgins <brendanhiggins@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 2, 2022 at 12:38 PM Frank Rowand <frowand.list@gmail.com> wrote:
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

That alone is not enough. Unless there's a DEBUG define, the
pr_debug() is going to print nothing.

> Unfortunately this can add lots of debug output, unless you use dynamic
> debug to only enable debug for drivers/of/unittest.o.  There are only
> a few other pr_debug() messages in unittest.

Dynamic debug is one option. Another would be a module param to enable
running the tests. Then it can be built, but has to be explicitly
enabled at boot time. A 3rd option is making it work as a module, then
it's run when loaded. (That was the original plan.)

> I think a better solution would be to add a config option, something
> like CONFIG_OF_UNITTEST_VERBOSE, that would print the pass messages
> at loglevel KERN_ERR.  I'll submit a patch for that and see what the
> review responses are.

Nak for another config option.

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

I thought you ended up agreeing with using kunit? Whatever you want to
call the DT tests, there's not really any good reason to do our own
pass/fail messages.

Rob
