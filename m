Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7944E6B37BA
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 08:48:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbjCJHsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 02:48:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbjCJHsr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 02:48:47 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B13A13928D
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 23:48:29 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id t25-20020a1c7719000000b003eb052cc5ccso5322507wmi.4
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 23:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1678434508;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BUDFtqMWsthDMffvpAoMPW6y3w7gutRliueCUvQ1lFA=;
        b=c6uhtTrlFvX2BM8B+Ij5mKWKymjeCvxSSmfGjwYSjVIxzqXYqP0SfOHZbK741oT7wk
         NlxxCK1gj7+WYqCqxLHjNmwHAMPxA6AdgeB34pBQHICdqg1jH8WCuE4H/e5ROaw9ND1T
         lZbnKpoTm/BtattMX8rP3s1T8PlvxgJdWJYSXe72miYt/JQjJlsJYXa50BRfatV47R9O
         Gj7MjEHfW8ERZcfYLfJgqMxXPMaKRnWz+oh2dAzB+dKNrKPuBzWIXA51XCcNivWXyxQB
         tbumrMp/BpwZfMBTg35Td7IcZXcaxrc8+FwhutpNMfHGfg+X7LRU/BcJh0hT3SqXoEvo
         weGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678434508;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BUDFtqMWsthDMffvpAoMPW6y3w7gutRliueCUvQ1lFA=;
        b=wkK/rFf+edpzdc0r/7Z8jzFTzTP0u93xa5j65LZQe39R6mxUnGW3yJ8VR/GH3jYsKT
         Jq94zFgnxhyqxfzojdfdfhK6mZ4y6ZqlovOcIVH8JkDwxDW9igEb5vLpTDLtRtZ/3bWg
         jYibYO95qRbbEzMO6UnX79NIkpZyxa24WID4I6MKYSTQY7Oxz99UUqyDFLXPMjChP/Cv
         kDO7KyIU69sS9OWByROR1xV6fulgXL71hl7uE2q7vkSdM7zd3N6dkLcOuTeUznnUJ7be
         zf5VI7sW3ptFiAJhkB6Xu4etEGY4dLfCOvSm7YZ9H02Z1jf2MwibAyNbMG4fGPgAODem
         xA3w==
X-Gm-Message-State: AO0yUKVhrcTBQHpgfAWOCMs02kgTVNcC43KgFHzElJz2CO9Yd235Xyj4
        0RbWGLPs4jNJfY/LgX2E7EtBXj2NJ3Hp+9qAJOeNjw==
X-Google-Smtp-Source: AK7set94tVYBFQ1almKq6L6E58IH8EKll1s7tduKC7DwGESChOPVpHL44fz+HerWj+MZWnIFNyPsKsUfV78uSRoksBg=
X-Received: by 2002:a1c:7910:0:b0:3eb:4cbe:1e87 with SMTP id
 l16-20020a1c7910000000b003eb4cbe1e87mr290872wme.3.1678434508065; Thu, 09 Mar
 2023 23:48:28 -0800 (PST)
MIME-Version: 1.0
References: <20230302013822.1808711-1-sboyd@kernel.org> <2ce31cd1-7a0e-18ac-8a5b-ed09d6539241@gmail.com>
In-Reply-To: <2ce31cd1-7a0e-18ac-8a5b-ed09d6539241@gmail.com>
From:   David Gow <davidgow@google.com>
Date:   Fri, 10 Mar 2023 15:48:15 +0800
Message-ID: <CABVgOS=6mLLYDr3ZOmv6iBQKPdFxTGDFP+uy9xgTHvdc03=vPw@mail.gmail.com>
Subject: Re: [PATCH 0/8] clk: Add kunit tests for fixed rate and parent data
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        patches@lists.linux.dev,
        Brendan Higgins <brendan.higgins@linux.dev>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Richard Weinberger <richard@nod.at>,
        Anton Ivanov <anton.ivanov@cambridgegreys.com>,
        Johannes Berg <johannes@sipsolutions.net>,
        Vincent Whitchurch <vincent.whitchurch@axis.com>,
        Rob Herring <robh+dt@kernel.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-um@lists.infradead.org,
        linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 4 Mar 2023 at 23:50, Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 3/1/23 19:38, Stephen Boyd wrote:
> > This patch series adds unit tests for the clk fixed rate basic type and
> > the clk registration functions that use struct clk_parent_data. To get
> > there, we add support for loading a DTB into the UML kernel that's
> > running the unit tests along with probing platform drivers to bind to
> > device nodes specified in DT.
> >
> > With this series, we're able to exercise some of the code in the common
> > clk framework that uses devicetree lookups to find parents and the fixed
> > rate clk code that scans devicetree directly and creates clks. Please
> > review.
>
> I would _really_ like to _not_ have devicetree tests in two locations:
> DT unittests and kunit tests.
>

I agree we don't want to split things up needlessly, but I think there
is a meaningful distinction between:
- Testing the DT infrastructure itself (with DT unittests)
- Testing a driver which may have some interaction with DT (via KUnit)

So, rather than going for a "devicetree" KUnit suite (unless we wanted
to port OF_UNITTEST to KUnit, which as you point out, would involve a
fair bit of reworking), I think the goal is for there to be lots of
driver test suites, each of which may verify that their specific
properties can be loaded from the devicetree correctly.

This is also why I prefer the overlay method, if we can get it to
work: it makes it clearer that the organisational hierarchy for these
tests is [driver]->[devicetree], not [devicetree]->[drvier].

> For my testing, I already build and boot four times on real hardware:
>
>   1) no DT unittests
>   2) CONFIG_OF_UNITTEST
>   3) CONFIG_OF_UNITTEST
>      CONFIG_OF_DYNAMIC
>   4) CONFIG_OF_UNITTEST
>      CONFIG_OF_DYNAMIC
>      CONFIG_OF_OVERLAY
>
> I really should also be testing the four configurations on UML, but at
> the moment I am not.
>
> I also check for new compile warnings at various warn levels for all
> four configurations.
>
> If I recall correctly, the kunit framework encourages more (many more?)
> kunit config options to select which test(s) are build for a test run.
> Someone please correct this paragraph if I am mis-stating.

We do tend to suggest that there is a separate kconfig option for each
area being tested (usually one per test suite, but if there are
several closely related suites, sticking them under a single config
option isn't a problem.)

That being said:
- It's possible (and encouraged) to just test once with all of those
tests enabled, rather than needing to test every possible combination
of configs enabled/disabled.
- (Indeed, this is what we do with .kunitconfig files a lot: they're
collections of related configs, so you can quickly run, e.g., all DRM
tests)
- Because a KUnit test being run is an independent action from it
being built-in, it's possible to build the tests once and then just
run different subsets anyway, or possibly run them after boot if
they're compiled as modules.
- This of course, depends on two test configs not conflicting with
each other: obviously if there were some tests which relied on
OF_OVERLAY=n, and others which require OF_OVERLAY=y, you'd need two
builds.

The bigger point is that, if the KUnit tests are focused on individual
drivers, rather than the devicetree infrastructure itself, then these
probably aren't as critical to run on every devicetree change (the DT
unittests should hopefully catch anything which affects devicetree as
a whole), but only on tests which affect a specific driver (as they're
really intended to make sure the drivers are accessing / interacting
with the DT properly, not that the DT infrastructure functions).

And obviously if this KUnit/devicetree support ends up depending on
overlays, that means there's no need to test them with overlays
disabled. :-)

>
> Adding devicetree tests to kunit adds additional build and boot cycles
> and additional test output streams to verify.
>
> Are there any issues with DT unittests that preclude adding clk tests
> into the DT unittests?
>

I think at least part of it is that there are already some clk KUnit
tests, so it's easier to have all of the clk tests behave similarly
(for the same reasons, alas, as using DT unittests makes it easier to
keep all of the DT tests in the same place).

Of course, as DT unittests move to KTAP, and possibly in the future
are able to make use of more KUnit infrastructure, this should get
simpler for everyone.


Does that seem sensible?

-- David
