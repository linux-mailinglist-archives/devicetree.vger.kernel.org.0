Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B03F56AFE1
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 03:52:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236912AbiGHBU5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 21:20:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236905AbiGHBU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 21:20:56 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64FD172EDA
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 18:20:55 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id o4so28563716wrh.3
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 18:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=reGckhTMb2AA8NDGwp9T0SSvAUm/l12G9OcR87LiTSA=;
        b=cHtdC1dJTMfPKIC6WmxoNGM+pwXUwrC2uTYV6s3KV9JeDu6C0ADW5DEw5UVQuZfiR4
         g1NBk0w4tHtSIBBv7wD3D9Nn707+0rYQtN31JHK0OaoRW7KPlpNXaxuHTQkFh270Vowb
         2amsSb37IXkxXXVIdhvNzVmsGYDIgcnmGuZ48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=reGckhTMb2AA8NDGwp9T0SSvAUm/l12G9OcR87LiTSA=;
        b=dS0eYE6Gy0huxc+qy/1MGgWuAek/Ae4YPS2ebr+qcLu+S27p5OpIXEB+PmwnKjrLAW
         MDxCQFW/RCFmXfeix9eqYQb/hVz1CjvLFMcPCHW1qeG+7Zmfqi85s/tCB+PFuk3t560v
         FA0L+y34ORlbT6Hh4NHQggu2ffxdywiDNqIGAaKCBKJ+EbSmfN618NvfnyKkx8P5U13R
         EepN5qJXTFxn6z3mqON7VTGlXGPxnSHi4toN6c5fdY/9vIdfBTf1sTDHGR6udBZ7OGcP
         DBf98JcTB1YAJ7NXOYpYEWv94WGt3lTrIQ9o6mwYoG+f6OexJyCKJXNuWbKFO0C0/JGc
         SWCw==
X-Gm-Message-State: AJIora81OguwDrrspFakQfEhQhc1pc2lxn6bA/St+ocUr0YOqohXkidd
        1lDLaHRN5PA7qAdcWF92hRgICLIrkQQHulIyfEA8eQ==
X-Google-Smtp-Source: AGRyM1vT+KuWIehOW7J4raxkCnF0J/u3XOtzNq7Etd42dnm2OFk74gHmMMAfL+02vgogrAFGcWWlB9Xx6YBVPXyjEQU=
X-Received: by 2002:a5d:61d0:0:b0:21d:5e08:af3c with SMTP id
 q16-20020a5d61d0000000b0021d5e08af3cmr652042wrv.25.1657243253823; Thu, 07 Jul
 2022 18:20:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAODwPW9E8wWwxbYKyf4_-JFb4F-JSmLR3qOF_iudjX0f9ndF0A@mail.gmail.com>
 <CAODwPW8fiFSNehZbZDdR9kjHxohLGiyE7edU=Opy0xV_P8JbEQ@mail.gmail.com>
 <3bb0ffa0-8091-0848-66af-180a41a68bf7@linaro.org> <CAODwPW89xZQZiZdQNt6+CcRjz=nbEAAFH0h_dBFSE5v3aFU4rQ@mail.gmail.com>
 <8f51aed8-956b-ac09-3baf-2b4572db1352@linaro.org> <CAODwPW9MvYJo8QbKOoVcUAKJ8Hxon2MCv_H5qpv=yaSTLLc+ug@mail.gmail.com>
 <628a7302-1409-81f7-f72b-6b1645df9225@linaro.org>
In-Reply-To: <628a7302-1409-81f7-f72b-6b1645df9225@linaro.org>
From:   Julius Werner <jwerner@chromium.org>
Date:   Thu, 7 Jul 2022 18:20:42 -0700
Message-ID: <CAODwPW-4i+idH8Nz6=EmNUXYWgWkoOHs3wOZ7BbrH5GwGDZ1Ww@mail.gmail.com>
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
X-Spam-Status: No, score=-10.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Then I would assume that all lpddr properties can differ between ranks,
> including the timings. But probably some SDRAM memory expert should
> clarify that.

Right, so that's what my proposal does -- separate timings nodes per
rank (and channel).

> > That really doesn't work for our use case, we can't generate a
> > specific compatible string for each part number. This may work when
> > your board is only using a single memory part and you can hardcode
> > that in the DTB blob bundled with the kernel, but we are trying to do
> > runtime identification between dozens of different parts on our
> > boards. The whole point of us wanting to add these bindings is that we
> > want to have the firmware inject the raw values it can read from mode
> > registers into the device tree (with just the compatible string
> > "jedec,lpddr3"),
>
> You cannot have jedec,lpddr3 alone. You need specific compatible.

Sorry, what do you mean we cannot? Why not? That's the way we need to
do it for our use case. Why shouldn't it work that way? As far as I
understand the binding definition, this is one of the legal compatible
strings for it. (I'm not saying other platforms can't register and
provide specific compatible strings if they want to, of course, but
for our situation that really doesn't work.)

> > so that we can then delegate the task of matching
> > those values to part numbers to a userspace process.
>
> Constructing a vendor from mode registers is like 10 lines of C code, so
> this is not a problem. Trouble would be with device part of compatible.

There's potentially 255 different manufacturer codes, and the
assignments may be different for different LPDDR versions. That's a
big string table that we don't want to have to fit in our firmware
flash. Besides, as you said, that still only gives you the vendor...
so then should we use "micron,lpddr3" or "elpida,lpddr3" instead of
"jedec,lpddr3"? Where's the advantage in that?

> > Can we please revert that deprecation and at least keep the property
> > around as optional?
>
> Yes, we can. You still would need to generate the compatible according
> to the current bindings. Whether we can change it I am not sure. I think
> it depends how much customization is possible per vendor, according to
> JEDEC spec. If we never ever have to identify specific part, because
> JEDEC spec and registers tell us everything, then we could skip it,
> similarly to lpddr2 and jedec,spi-nor.

Shouldn't that be decided per use case? In general LPDDR is a pretty
rigid set of standards and memory controllers are generally compatible
with any vendor without hardcoding vendor-specific behavior, so I
don't anticipate that this would be likely (particularly since there
is no "real" kernel device driver that needs to initialize the full
memory controller, after all, these bindings are mostly
informational). Of course there may always be mistakes and broken
devices that need custom handling, and if someone has a platform with
such a case I of course don't want to preclude them from tying special
behavior to a custom compatible string. But why would that mean we
need to make this mandatory for all platforms even if it's not
relevant (and not practically feasible) for them? Why not allow both?

> > We need to be able to report the information that's currently encoded
> > in the "jedec,lpddr2" binding separately for each channel+rank
> > combination, and we need to be able to tell how many LPDDR chips are
> > combined under a single memory channel.
>
> Who and why needs that information?
>
> To me it's not a very useful information without knowing how memory
> ranges are mapped to the chips and then only kernel drivers should be
> able to utilize that info in a meaningful way. What driver are we
> talking about?

We're using this for diagnostic purposes, to be able to accurately
report the installed memory configuration to the user or in automated
error reporting. We're planning to just read it from userspace (via
/proc/device-tree) and not actually add a kernel driver for it, but
since it needs to come from the firmware through the device tree it
should have a standardized binding all the same.
