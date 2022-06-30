Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6625560E86
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 03:04:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230241AbiF3BD4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 21:03:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbiF3BDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 21:03:55 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D3B321812
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 18:03:53 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id d17so19240261wrc.10
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 18:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5NQqj0qR4ORy93iwIYJOr5BAi74gi8sfq3SZuaybn8I=;
        b=C2c49isPrbsmtusAZGmeODl5nBRjEPvakPfcutjnGFq9an2Lex4u4Hh9ZJOzgzS9xj
         bXnM0cFTF5LPByoIwfwx4lo4a/JmZOyybxfXyHxY+9GsWMB4nM5v23mNCBvYnS+RvmOz
         5pvpzmlkck2etpBOTF2/sMWwkC3hTKhBwg3Us=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5NQqj0qR4ORy93iwIYJOr5BAi74gi8sfq3SZuaybn8I=;
        b=qOArd6CpJdKTmtwYKiVWwwvWsf70uIw34M3HxTafeXRne3ZkbXjTKQ0di6RtRcha+m
         CNmMZN9r6U+Izl87i2VtIXjCN6w3iAsed6sxfrA6pCFL92MtyKMQEHpMW+AP7i5TIYtp
         BVZV9LLs2P7bNLlpZSD5T9JHSx2S4I18IHOI2GIahsmV5PHnuM5Zl84pA4qYEbB598aC
         dPbAoM8buimVzfEDxO8QEdCpcGCVIKoNIGibPMO2P1KMempRkTgJoWdUS0q2TuAtu94W
         gtNrkQhxhiXWqotytG2SEMNjCIoNJ7scUCvJ4gTznwGp5ad8FqesD5iM0MRDT4tYQAm6
         n3IA==
X-Gm-Message-State: AJIora+l9HgSrhsAh9mNvypSxVWgO1l506EoA4hLv4Wx/BtvUHcnnndr
        Vxr0niJSseCxyuhVM8rc7gjtv5U+1JtBUvo91cO5kRHhJCrwZA==
X-Google-Smtp-Source: AGRyM1sSHSQkz6DcECWQWK9PFYTmQIZjagW/7lH1bk6p1RXPMkoHKGLN9IvbWPW99XWqmIQF4/UuX4vl7IEyBKdUVpQ=
X-Received: by 2002:adf:ce8a:0:b0:21b:bced:6883 with SMTP id
 r10-20020adfce8a000000b0021bbced6883mr5637675wrn.25.1656551031938; Wed, 29
 Jun 2022 18:03:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAODwPW9E8wWwxbYKyf4_-JFb4F-JSmLR3qOF_iudjX0f9ndF0A@mail.gmail.com>
 <CAODwPW8fiFSNehZbZDdR9kjHxohLGiyE7edU=Opy0xV_P8JbEQ@mail.gmail.com> <3bb0ffa0-8091-0848-66af-180a41a68bf7@linaro.org>
In-Reply-To: <3bb0ffa0-8091-0848-66af-180a41a68bf7@linaro.org>
From:   Julius Werner <jwerner@chromium.org>
Date:   Wed, 29 Jun 2022 18:03:40 -0700
Message-ID: <CAODwPW89xZQZiZdQNt6+CcRjz=nbEAAFH0h_dBFSE5v3aFU4rQ@mail.gmail.com>
Subject: Re: [RFC] Correct memory layout reporting for "jedec,lpddr2" and
 related bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Julius Werner <jwerner@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Jian-Jia Su <jjsu@google.com>,
        Doug Anderson <dianders@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Nikola Milosavljevic <mnidza@outlook.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> You need to base your upstream work on upstream tree. My email was
> changed like three months ago...

Apologies, I just used the same email that I sent patches to last
year. Once I write an actual patch for this issue, I'll make sure to
use get_maintainer.pl.

> >> We need to be able to report the information that's currently encoded
> >> in the "jedec,lpddr2" binding separately for each channel+rank
> >> combination, and we need to be able to tell how many LPDDR chips are
> >> combined under a single memory channel.
>
> Why?
>
> At beginning of your message you kind of mixed two different usages:
> 1. Knowing the topology of the memory.
> 2. Figuring out total memory.
>
> Implementing (1) above would probably solve your (2) use case. But if
> you only need (2), do you really need to define entire topology?

Okay, sorry, I wasn't clear here. We are really interested in topology
(for documentation and SKU identification purposes), so "just"
figuring out total memory is not enough. The point I wanted to make is
more that we want to be able to identify the whole topology down to
the exact number of components on each layer, so the existing binding
(which just defines one LPDDR chip without explaining how many
instances of it there are and how they're hooked up together) is not
enough. Saying "I want to be able to figure out total memory from
this" is more like an easy way to verify that all the information
we're looking for is available... i.e. if all the LPDDR chips and
their amounts and relations to each other are described in a way
that's detailed enough that I can total up their density values and
come up with the same number that the /memory node says, then I know
we're not missing any layer of information. But ultimately I'm
interested in being able to read out the whole topology, not just
total capacity.

>> For the latter, I would suggest adding a new property "channel-io-width" which
>
> No, because io-width is a standard property, so it should be used
> instead. It could be defined in channel node.

What exactly do you mean by "standard property" -- do you mean in an
LPDDR context, or for device tree bindings in general? In other device
tree bindings, the only thing I can find is `reg-io-width`, so that's
not quite the same (and wouldn't seem to preclude calling a field here
`channel-io-width`, since the width that's talking about is not the
width of a register). In LPDDR context, the term "IO width" mostly
appears specifically for the bit field in Mode Register 8 that
describes the amount of DQ pins going into one individual LPDDR chip.
The field that I need to encode for the channel here is explicitly
*not* that, it's the amount of DQ pins coming *out* of the LPDDR
controller, and as explained in my original email those two numbers
need not necessarily be the same when multiple LPDDR chips are hooked
up in parallel. So, yes, I could call both of these properties
`io-width` with one in the rank node and one in the channel node...
but I think giving the latter one a different name (e.g.
`channel-io-width`) would be better to avoid confusion and provide a
hint that there's an important difference between these numbers.

> You also need a timings node. I don't think it would be different for
> each of ranks, would it?

I think it might be? I'm honestly not a memory expert so I'm not
really sure (Jian-Jia in CC might know this?), but since different
ranks can be asymmetric (even when they're on the same part), I could
imagine that, say, the larger rank might need slightly longer
precharge time or something like that. They at least all implement a
separate set of mode registers, so they could theoretically be
configured with different latency settings through those.

> >> (Also, btw, would it make sense to use this opportunity to combine the
> >> "jedec,lpddr2" and "jedec,lpddr3" bindings into a single document?
>
> These bindings are quite different, so combining would result in big
> allOf. I am not sure if there is benefit in that.

They should basically be 100% identical outside of the timings. I can
see that jedec,lpddr2 is currently missing the manufacturer-id
property, that's probably an oversight -- Mode Register 5 with that ID
exists for LPDDR2 just as well as for LPDDR3, and we're already
passing the revision IDs which is kinda useless without also passing
the manufacturer ID as well (because the revision IDs are
vendor-specific). So merging the bindings would fix that. The only
other difference I can see are the deprecated
`revision-id1`/`revision-id2` fields for jedec,lpddr2 -- if I use a
property inclusion mechanism like Doug suggested, those could stay
separate in jedec,lpddr2 only (since they're deprecated anyway and
replaced by `revision-id` in the combined bindings).

For the timings, I'm okay with keeping them separate.
