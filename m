Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7977A4A7C96
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 01:15:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232917AbiBCAPj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 19:15:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348464AbiBCAPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 19:15:33 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42D05C061744
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 16:15:29 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D5F5860A54
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 00:15:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EB0AC340ED
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 00:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643847328;
        bh=+aT1YJjlhHHw3MYEfUC/j4M+RnMK+2v1ZCpS5zMXzFY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=C+7NJOow7M/f0BDpK6pPKUmXJ3f8oqfn1KkJOQWxDE16rcXGQAmNJGqhMKSy2oStp
         69r3lRfJkpZnQ4kicsJOKhidjU1K48GWd4Bht7OQR6aloB6M/6YCT7pzN55aywFm/Q
         do8c6YxE160R4UQ5iOw9H/BKLPAop4a+8JfSpbSSMEHeAEhtx5g9iaUCzHVw5sSloy
         Z0Z0opOP6Xln4pch+ci5PeCFUSxXvO7splxLbissdku96WgRuKNSGgRXxMEyPc1u9p
         x/fa4SKJcjP5yNvUpygNMe1Yv0f2KIfNDl5XztBTxtYpQpEdGLveM1+n3tH0xXDr9I
         kKEJCk6dH94zA==
Received: by mail-ej1-f41.google.com with SMTP id a8so2488344ejc.8
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 16:15:28 -0800 (PST)
X-Gm-Message-State: AOAM530BeHvFKFr9v2+xIbfOxD4C8CS5kCs2q8k3NmVRmGbXpsc2ZnQf
        tJXf1JcnVCuAXBHv9H8Nj4PCkC7kyCmJ1PyGew==
X-Google-Smtp-Source: ABdhPJz3OjHctLpug/CSavNGsyG60jU0PtKY8bGtJRDjfBJutpvcamM1NnOkKrhmKxsXINXUTciJpKMy5PsfViqfldY=
X-Received: by 2002:a17:907:2d1e:: with SMTP id gs30mr26827523ejc.14.1643847326537;
 Wed, 02 Feb 2022 16:15:26 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYubR5A4f_0hDN1=Jaj_A-0GhMAcTc+TfJb5sgf0hRik8Q@mail.gmail.com>
 <0b6ab190-4c35-94fc-6565-6382d461ae84@gmail.com> <CAL_JsqLnv_=mcs+pAXRArSg7uccPFpDhcbBOpHGaWwjOZdt9DQ@mail.gmail.com>
 <a6c785b1-2382-d6f5-d57b-d7ed3610050a@gmail.com>
In-Reply-To: <a6c785b1-2382-d6f5-d57b-d7ed3610050a@gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 2 Feb 2022 18:15:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ5a_0186ijg0C=9d3PjxsJZbwUab_o7QK8u8OVE_pvUw@mail.gmail.com>
Message-ID: <CAL_JsqJ5a_0186ijg0C=9d3PjxsJZbwUab_o7QK8u8OVE_pvUw@mail.gmail.com>
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

On Wed, Feb 2, 2022 at 4:01 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 2/2/22 2:29 PM, Rob Herring wrote:
> > On Wed, Feb 2, 2022 at 12:38 PM Frank Rowand <frowand.list@gmail.com> wrote:
> >>
> >> On 2/2/22 5:31 AM, Naresh Kamboju wrote:
> >>> Linaro started doing Linux kernel Functional Validation (LKFT).
> >>> As part of LKFT recently we have enabled CONFIG_OF_UNITTEST=y in our
> >>> daily test CI.
> >>>
> >>> The output of the test looks as below. The current problem is that we
> >>> have a hard time to see (grep) pass/fail for each individual test. We
> >>> only see a summary at the end with x pass and y fails.
> >>
> >> The FAIL messages are printed at loglevel KERN_ERR.  The pass messages
> >> are printed at loglevel KERN_DEBUG.  To see the pass messages, set the
> >> loglevel to allow debug output.
> >
> > That alone is not enough. Unless there's a DEBUG define, the
> > pr_debug() is going to print nothing.
>
> I almost mentioned that detail, but decided I didn't need to given my
> reference below to dynamic debug.
>
> >
> >> Unfortunately this can add lots of debug output, unless you use dynamic
> >> debug to only enable debug for drivers/of/unittest.o.  There are only
> >> a few other pr_debug() messages in unittest.
> >
> > Dynamic debug is one option. Another would be a module param to enable
> > running the tests
>
> I could implement that.
>
> But that does not address the issue of the individual test pass messages
> being printed at loglevel KERN_DEBUG.  Are you thinking I should add a
> second module param that would enable printing the test pass messages
> at the same loglevel as the test fail messages?

Make them info level perhaps. If someone wants to run the unittests,
then I think we should just print everything. It's already
incomprehensible with all the EXPECT lines...

> I'm not up to date on module params.  I'm assuming that I can pass these
> new params on the boot command line if I build unittest as a built-in
> instead of as a module.

Yes.

> > Then it can be built, but has to be explicitly
> > enabled at boot time.
>
> > A 3rd option is making it work as a module, then
> > it's run when loaded. (That was the original plan.)
> >
> >> I think a better solution would be to add a config option, something
> >> like CONFIG_OF_UNITTEST_VERBOSE, that would print the pass messages
> >> at loglevel KERN_ERR.  I'll submit a patch for that and see what the
> >> review responses are.
> >
> > Nak for another config option.
>
> Because?

It's another config option... Another build combination to test...
Users have to rebuild to change behavior...

> >>> We would like to get your opinion of how hard it would be to include
> >>> that in the output per test. Maybe like TAP version 14?
> >>> Another question would be how hard do you think it would be to rewrite
> >>> this to a kunit test, if even applicable? I have provided the kunit
> >>> output links at the end of this email.
> >>
> >> Devicetree unittests were suggested as a good candidate as a first
> >> test to convert to kunit when kunit was implemented.  Brendan tried
> >> to convert it, and we quickly saw that it was not a good candidate.
> >> Devicetree unittests do not fit the unit test mold; they are a very
> >> different creature.  Brendan has a good term for this type of test
> >> (Brendan, was it "acceptance" test?).
> >
> > I thought you ended up agreeing with using kunit? Whatever you want to
>
> Not the kunit _framework_.
>
> > call the DT tests, there's not really any good reason to do our own
> > pass/fail messages.
>
> Yes, I would like to change the pass fail messages to follow the same
> standard as kunit, so that the test frameworks could easily process
> the unittest results.  That has been on my todo list.

Ah, I misunderstood.

Rob
