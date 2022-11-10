Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02C5C6241E1
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 13:03:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229593AbiKJMDK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 07:03:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230145AbiKJMDI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 07:03:08 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ABD865E72
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 04:03:06 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id kt23so4385069ejc.7
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 04:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ob/e8QhFSKQow477/UnsUCQpPaJq+D6UN+ZS0rT7ISA=;
        b=le1m+tySnZFrWD+FNJF3iawa2vpXarwIWR6XQe9aE8N9o6nW8A37wplGJk3z1tWWkC
         LEEn7Di9Z9PB3RNAycaj5lHR+kj/OanSofBXlCWWgwdZG921fTjAHNFjKcynKFDxBMnQ
         IaPhywUypACPL5DK3859KE9STTjTEdgP4FvxCSkdFO/Y4r0XLViqrPGYob1SaPESZTcr
         C/4tZS7LRJLxTST2PQmcDAcW3uMb77ankvzXoDESyrSrebFRReSSd/SRPKNuJ6D9/Dkt
         7qTb9K8SEzv3TvIw/NHiqe8twp+ZMcg/h3NN3/mt6d+poMzq14JtDvzC3VDZu6O3zeGq
         Fjdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ob/e8QhFSKQow477/UnsUCQpPaJq+D6UN+ZS0rT7ISA=;
        b=cV+egJy1x60vX1xCakMkJihyzkMduAZ8i9kCicWhT7vbRpB6C6hOY4UzKR0xcfItSz
         40mZAJ8CPF6gZbgd47kt7uztTUvmi/QUtF+UFn6M07C4eQJFGxTzXCr2BWQpeIxYqpsG
         zgrxybtaRTDpyO7VFwygfMdFEQHw+RqZP/fEWNoifCoEUZyMQIJjCwemj4S7q2Bzi6Yv
         0KmRUodd+waDteO3vE4z2Ckjf7CPyGh5LbrmTesTLL9S6F3nIEZl7UMBOxChtKfX5y1R
         R31g++oVDHp7GM8XU4XNC1hbNQLoqq5YS1gYBN6TchNKOF3fA/Iv1MoGRRIDZosAJQnm
         C0BA==
X-Gm-Message-State: ACrzQf0V9NVoqC8Ec447fd58HZjYDPoqIC5wOYqB4YM6kQCXp7b2fcYF
        3+0Ox0cgUIl66UxK487NjYv9iblWKL51rAEDh19Waw==
X-Google-Smtp-Source: AMsMyM6ZxB8A4LR374xkte3z/yOvNSUfRhSJf8XU8Qh2q30lY4vtqHPJjVW7x7WkdvZe9vmFvDTwBu3Jm6UddLcustA=
X-Received: by 2002:a17:906:4c4b:b0:7ad:a197:b58e with SMTP id
 d11-20020a1709064c4b00b007ada197b58emr60524069ejw.203.1668081784986; Thu, 10
 Nov 2022 04:03:04 -0800 (PST)
MIME-Version: 1.0
References: <20221110014255.20711-1-andre.przywara@arm.com>
 <CACRpkdb=5mobcWBJYtXd=nC7A+Uo__itk0F9oZBeTjWHBkBU1w@mail.gmail.com> <20221110113352.32daa5c6@donnerap.cambridge.arm.com>
In-Reply-To: <20221110113352.32daa5c6@donnerap.cambridge.arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Nov 2022 13:02:53 +0100
Message-ID: <CACRpkdbMc-Q6wjgsiddu6-tWC1dt2uFk+4LyerMdgFk2KRGK4w@mail.gmail.com>
Subject: Re: [RFC PATCH 0/2] pinctrl: sunxi: Introduce DT-based pinctrl builder
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Icenowy Zheng <uwu@icenowy.me>, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 10, 2022 at 12:33 PM Andre Przywara <andre.przywara@arm.com> wrote:

> This is actually an argument in favour of it: at the moment *every* OS
> (or DT user) has to carry some form of this table[1]. For U-Boot this is a
> major pain, for instance, and we came up with some minimal and
> simplified version of that (assuming one pinmux per function name,
> ignoring different mappings in different ports: [2]), but we are already
> touching its limits.

That's a compelling argument.

I don't know about reusing the existing pinmux property in a new way
which differs from the standard one:

  pinmux:
    description:
      The list of numeric pin ids and their mux settings that properties in the
      node apply to (either this, "pins" or "groups" have to be specified)
    $ref: /schemas/types.yaml#/definitions/uint32-array

You should rather invent something like "sunxi,pin-mux-val" or so.

That makes me happy to merge it at least, I don't see any problem
with it.

> And I don't think this DT argument counts anyway: we already store a much
> bigger chunk of "information" in the DT, namely the function name. This has
> no technical meaning, really, other than to map this to a 4-bit value
> internally. I don't know why we have an information like "UART0 is using
> the 'uart0' pin group" in the DT, but refuse to put the actual
> hardware information in there. We could possibly even get rid of the
> string, and derive this from the node name, if we need some human readable
> identifier.

These exist for consistency and maintenance, they are established
standard bindings:
Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml

Associating a function "uart0" with something like
[ "uart0-txrx", uart0-rtscts" ] by a line such as:

groups = "uart0-txrx", "uart0-rtscts";

is simple to understand, and makes it easier for maintainers who have
to look at a lot of different platforms with different muxes. So these
are there for human readability.

I.e. the goal of standard properties is not to minimize amount of
information (which is your goal here) but to structure things in a way that
makes maintenance easier by being similar on several platforms.

Some systems deviate from standard properties, and admittedly
this way of structuring things with strings is maybe not the ultimate.
The most deviating one is:
Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt
which is used by OMAP and HiSilicon.
Some feel this should never have been merged.
But it was merged.
By me.

There is also the pinmux property above which some systems use for
putting in enumerated magic. That's part of the standard but
makes the standard somewhat incoherent.

This difference in pin control DT patterns is because we could
not come up with something that was acceptable for all and the
result of some diplomacy when the subsystem was created around
2011-2012.

The thing is that I am not a very consistent and stubborn person
and I think more along the lines of the IETF motto "rough consensus
and running code". The DT people were different back in 2011,
and also softer around the edges, not as strict and not insisting on
things being done one way for all systems. Their ambitions have
stepped up since. So these are the people you need to convince.

I suggest you propose the bindings with the patch set by Cc
devicetree@vger.kernel.org using the custom "sunxi,pin" or whatever
name you want and see if the DT reviewers agree with this solution.

If they say nothing in like 2 weeks I usually merge things that I
find non-objectionable anyways.

Yours,
Linus Walleij
