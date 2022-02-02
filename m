Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7924F4A7A17
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 22:14:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230170AbiBBVOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 16:14:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347310AbiBBVOU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 16:14:20 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1759C061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 13:14:19 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id cq9-20020a17090af98900b001b8262fe2d5so2731527pjb.0
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 13:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qcORvHn2oHksDOO+n75W/0IWa2B1rAJbYXLV+t7ym04=;
        b=mjptxGJCbU350NgkldP2gDU6A939PIFQQuB2caPWo6BARETZJA/WPHy+gJ+JlRFt+D
         y6lbCOX+NPtOC1Kjh1fxE1UxXeSOqsNouUQcIj05IIw3NhS9oM+OntKPCmMPJa+bRixi
         dlh2FIr5dkYXQ0SSfaPbRynwnXls1Vit3R/yZX6rcbyqM8mUObFv6qMzbMOADgItDbB4
         oLgSxoxPd0Szrqk1XyIBeWUw+rRVKVhshUXptFOfzhC15EOGkXuz/ZyajhsRITTn7p87
         j1hZUS+Z9gsmooNSqcwH4due92IYjh8PfUxGtm+L6rXdmeAFbOdLcgE98aLI59rjpqGW
         StEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qcORvHn2oHksDOO+n75W/0IWa2B1rAJbYXLV+t7ym04=;
        b=o3uUVcyP3fHGJOL8ZDgqrDFkWxRR6ZMWHmLRyUDGlLLXTQjJVhkXvvDCAPu/ExO5Wl
         nfUU6jw666yOqHGP4ivVJaamN5iykOk1ax44kXlUXy5dYHTKilRgIqxxM4+pOhpCKE/W
         M68YRlRrCCHvgtDqnT+Dj4Hq/M85i/qPmwFIu2XmFWLgc8VkTzStqQiWj9I1P+Bp88UX
         dBIM+sk8sMqcV80xRlOeOg0zJkKbIJTnT59swVrFQHk6RnP93jKeKCKuuhZcXG4E0qK+
         LPlyW+x8PJMk17oPEB0bUrQEX9HauDP5t1SUmtnYEwVWUpoiK+DHefGHPsop2gdeCEBV
         vYTg==
X-Gm-Message-State: AOAM5325hWwVFF/kKd7oMTsJjX5zw198rfNVTnVKDPdw4mxyGhUmi1oe
        g1wybjr7HQx23Lv7qjXJg9CKTbQGAktmYx2YqL2rww==
X-Google-Smtp-Source: ABdhPJzlv7MQecNbWTDN5niGpV3gfdRxnBNhMFJdLdLCFjqiR5++FT0LFmsgYXTNfnYlOHNAA4qot45RLH12NNM7ip0=
X-Received: by 2002:a17:903:187:: with SMTP id z7mr32528068plg.123.1643836459030;
 Wed, 02 Feb 2022 13:14:19 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYubR5A4f_0hDN1=Jaj_A-0GhMAcTc+TfJb5sgf0hRik8Q@mail.gmail.com>
 <0b6ab190-4c35-94fc-6565-6382d461ae84@gmail.com> <CAL_JsqLnv_=mcs+pAXRArSg7uccPFpDhcbBOpHGaWwjOZdt9DQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLnv_=mcs+pAXRArSg7uccPFpDhcbBOpHGaWwjOZdt9DQ@mail.gmail.com>
From:   Brendan Higgins <brendanhiggins@google.com>
Date:   Wed, 2 Feb 2022 16:14:08 -0500
Message-ID: <CAFd5g449HEXfnX2qOWFRLsgwLM1axgHhG6EckunsEY58O1xJVg@mail.gmail.com>
Subject: Re: Device Tree runtime unit tests: Harmonisation
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Naresh Kamboju <naresh.kamboju@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 2, 2022 at 3:29 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, Feb 2, 2022 at 12:38 PM Frank Rowand <frowand.list@gmail.com> wrote:
> >
> > On 2/2/22 5:31 AM, Naresh Kamboju wrote:
> > > Linaro started doing Linux kernel Functional Validation (LKFT).
> > > As part of LKFT recently we have enabled CONFIG_OF_UNITTEST=y in our
> > > daily test CI.
> > >
> > > The output of the test looks as below. The current problem is that we
> > > have a hard time to see (grep) pass/fail for each individual test. We
> > > only see a summary at the end with x pass and y fails.
> >
> > The FAIL messages are printed at loglevel KERN_ERR.  The pass messages
> > are printed at loglevel KERN_DEBUG.  To see the pass messages, set the
> > loglevel to allow debug output.
>
> That alone is not enough. Unless there's a DEBUG define, the
> pr_debug() is going to print nothing.
>
> > Unfortunately this can add lots of debug output, unless you use dynamic
> > debug to only enable debug for drivers/of/unittest.o.  There are only
> > a few other pr_debug() messages in unittest.
>
> Dynamic debug is one option. Another would be a module param to enable
> running the tests. Then it can be built, but has to be explicitly
> enabled at boot time. A 3rd option is making it work as a module, then
> it's run when loaded. (That was the original plan.)
>
> > I think a better solution would be to add a config option, something
> > like CONFIG_OF_UNITTEST_VERBOSE, that would print the pass messages
> > at loglevel KERN_ERR.  I'll submit a patch for that and see what the
> > review responses are.
>
> Nak for another config option.
>
> > > We would like to get your opinion of how hard it would be to include
> > > that in the output per test. Maybe like TAP version 14?
> > > Another question would be how hard do you think it would be to rewrite
> > > this to a kunit test, if even applicable? I have provided the kunit
> > > output links at the end of this email.
> >
> > Devicetree unittests were suggested as a good candidate as a first
> > test to convert to kunit when kunit was implemented.  Brendan tried
> > to convert it, and we quickly saw that it was not a good candidate.
> > Devicetree unittests do not fit the unit test mold; they are a very
> > different creature.  Brendan has a good term for this type of test
> > (Brendan, was it "acceptance" test?).
>
> I thought you ended up agreeing with using kunit? Whatever you want to
> call the DT tests, there's not really any good reason to do our own
> pass/fail messages.

I think you are referring to this email[1]?

I talked to Frank since then a number of times at conferences and on
email, and I think this topic came up a couple of times, but I don't
remember where things ended up. I just assumed that nothing was going
to happen here because of how much time had passed.

Nevertheless, if it helps, we now have an option for printing test
statistics to dmesg[2]; I remember that is something that Frank had
asked for.

Cheers!

[1] https://lkml.org/lkml/2019/9/21/188
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=acd8e8407b8fcc3229d6d8558cac338bea801aed
