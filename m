Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FE372A15D9
	for <lists+devicetree@lfdr.de>; Sat, 31 Oct 2020 12:39:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727175AbgJaLjD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Oct 2020 07:39:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726913AbgJaLjA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Oct 2020 07:39:00 -0400
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com [IPv6:2607:f8b0:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD7A8C0613D5
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 04:38:59 -0700 (PDT)
Received: by mail-il1-x141.google.com with SMTP id x7so8805179ili.5
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 04:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iWr+b4d6vRwF0t5pomRiiNEuuSgjMZV6gdO6R0PGLGI=;
        b=MzPO9MZkXm8AlGd0bbcmenmj7NNR02MYFGX58iMzgPYBVdibEAsD6rhrnBbLTiSN2e
         QJ2+W9cgZrEAyuJKQuK8CSpJMY29IJKDaQEnU8V6duBohUzStWQhsAsy6k2z+6hSU12u
         ASW0Uzerm/BtVE/Ah1sBFrIxjkP3lrHBg9XwGiCigGkMGA3+4mY06kR6JZwSsXnonGrn
         eQwZ2wbLdZQokDrDN8o+VLv9+LBf6tOHq1JqxalVnAd1sENv2Pbv0tDw4quoHb2w6lY2
         rRQpLQ2F6ppixFa5jX8QaNEAX9JhEfoqJmr1Ocgvpg+tgLg4XYSYqPpx94/Mqhv9JKmC
         FDKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iWr+b4d6vRwF0t5pomRiiNEuuSgjMZV6gdO6R0PGLGI=;
        b=PlSrKpXQ4fzqftRr5cK/uULVpbaf9tg7lu6yKcYiSzVgMeA4amsZG3aZLKfQPJUQIo
         tr6GR3O0Lpsy3gazq9ek5rYnx4s1pvDf/OClh4Tfj8yyntoh2IzssBEZc1MVIwbCYW4i
         A+Th7Hir8S7icENmRhTcrzf+Erxo0lg/UhmRKzuSIVtRGy8Byn+lj5Y5ejTlFlY/614u
         H4vDm8TB6mpP9am7STRH3tIutNb9Qihp0HvRfrNc9xa431okFJgUdgtEb84dFdX2Nmu7
         5ay9Qu2xYIbLV3fOqeJIQw3CTLaMkN5CHXQI71G5MbdEqQs8PRd+YYCqM04hTDpB+jYi
         Hb/A==
X-Gm-Message-State: AOAM532uqJJ+Fs5KVPIPbMxIxsVUcvefitDu74JKBqwmY/ZKsk8ec5kP
        ZK6A98WDCJs9y6A0L2N7IWFaIh9TiKxyz6ZTZkLULA==
X-Google-Smtp-Source: ABdhPJxbtHT4iEyYwAkR4uBqXRY1zR99kXZQu5XEK1tkG0oSS3Wtm3zR0200hnrm2sMfkJJaP+DMIB2xXM3V68/vRfQ=
X-Received: by 2002:a92:480e:: with SMTP id v14mr4468180ila.218.1604144338898;
 Sat, 31 Oct 2020 04:38:58 -0700 (PDT)
MIME-Version: 1.0
References: <1603521686-13036-1-git-send-email-jiaxin.yu@mediatek.com>
 <1603521686-13036-3-git-send-email-jiaxin.yu@mediatek.com> <20201030182339.GA4069524@bogus>
In-Reply-To: <20201030182339.GA4069524@bogus>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Sat, 31 Oct 2020 19:38:48 +0800
Message-ID: <CA+Px+wV5v2NK5hQ7sqHHFXVE34iLmi8+7caHZpD5Y=SX5x57ag@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: mediatek: mt8192: add ul-delay-ms property
To:     Rob Herring <robh@kernel.org>
Cc:     Jiaxin Yu <jiaxin.yu@mediatek.com>,
        Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Takashi Iwai <tiwai@suse.com>,
        ALSA development <alsa-devel@alsa-project.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, shane.chien@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 31, 2020 at 2:23 AM Rob Herring <robh@kernel.org> wrote:
> On Sat, Oct 24, 2020 at 02:41:26PM +0800, Jiaxin Yu wrote:
> > +  mediatek,ul-delay-ms:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: |
> > +      Skip first time data at the beginning of DMIC recording
>
> What does 'ul' mean? Nothing tells me this is DMIC related in the name
> and 'ul' is not used anywhere in the description.

UL stands for Up-Link.

Please ignore the patch series.  We won't implement the delay in
mt6359.c.  Instead, we'll leverage generic dmic.c.  See
https://patchwork.kernel.org/project/alsa-devel/patch/1603521686-13036-2-git-send-email-jiaxin.yu@mediatek.com/#23716495
for previous discussion.
