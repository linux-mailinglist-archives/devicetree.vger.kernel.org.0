Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D351471BA2
	for <lists+devicetree@lfdr.de>; Sun, 12 Dec 2021 17:44:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231695AbhLLQoh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Dec 2021 11:44:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbhLLQoh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Dec 2021 11:44:37 -0500
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com [IPv6:2607:f8b0:4864:20::a30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB6A5C061714
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 08:44:36 -0800 (PST)
Received: by mail-vk1-xa30.google.com with SMTP id 84so9008768vkc.6
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 08:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4Iup0PuQre5u2Fob/RPt24yhd3mS85xJKv7O7p908ig=;
        b=F2V1Iuxnw9sXZfv56vR+qR+HCrc1/OxCJlGpzFbiru0wzuPfyfrIEIOon3bymnAoag
         j2F/IT3+KnzDb3lApTtZb3+torJDqkF1EP7sKKH0moLvV9PG2bvbOPQiOen+WYHHc+sU
         3e+GhLSHRGzkOM3EHNPHCeJQyXP5sRmNmhKUE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4Iup0PuQre5u2Fob/RPt24yhd3mS85xJKv7O7p908ig=;
        b=KELVjoP+6mprwDm/dgeJYDr7sB9asrWDhz+deGUENRf+JcF+Ra/Qfq95b6z6N7gOTY
         P7WNYEEsMrjgVGQw1l/sSsLVSi8KpAUG7NcsLatbPvuY4R88JBB7192pPBUE8nKtSOqo
         ++/rYLsidMVMrbOaZ8kfsJnOdtgzJ+NW3QkcARIJwHDBS2MWYae9l74jsV9yjGhKOzeG
         wse0W2Eu1LJ54W2Qzik4kI5xh7bDkvGVGULmX4CxFI1W01HUPLzR89K7cb89947m9FmL
         6Qq80plRi/GbTCjhtHt3xe4XyJnrc7ynoznOa2jo+SBxsMEstjqS9zbCWh/6NT1ttF7E
         PKZw==
X-Gm-Message-State: AOAM532MpLoQvJ6ewcdOkWnVzFvzKhKZeYy9ReHvhhCDjTKLZD3dznmY
        9w07kxvMmXCyuOmMEndJG87ICzz1wG1t1VyBwyhYOUFTw4E=
X-Google-Smtp-Source: ABdhPJwEJeOqr6oQvcFJg4KKaYC67h13cUgL588VnkbnkRUdVDD8DYVhG8iE/HgJufzkIQypRs6woELUDisWGMdurjo=
X-Received: by 2002:a05:6122:1354:: with SMTP id f20mr28815931vkp.12.1639327475901;
 Sun, 12 Dec 2021 08:44:35 -0800 (PST)
MIME-Version: 1.0
References: <20211126202144.72936-1-romain.perier@gmail.com>
 <20211126202144.72936-7-romain.perier@gmail.com> <CAFr9PXmpKrcPXL=EdL-uGu0X3nZBrAVcBSDqSbaDEvRhE6Abiw@mail.gmail.com>
 <CABgxDo+pF0RKK+HL+MVv5s0pn1T9a9Mqp6uPEkT0YPEH9kvQqw@mail.gmail.com>
In-Reply-To: <CABgxDo+pF0RKK+HL+MVv5s0pn1T9a9Mqp6uPEkT0YPEH9kvQqw@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Mon, 13 Dec 2021 01:44:25 +0900
Message-ID: <CAFr9PXnXHw2ppg8ZBrPVAxsW5YETyeS7ygrkpTmAKV9W58pTTw@mail.gmail.com>
Subject: Re: [PATCH 5/5] ARM: dts: mstar: Switch to compatible
 "mstar,ssd20xd-timer" on ssd20xd
To:     Romain Perier <romain.perier@gmail.com>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Romain,

On Mon, 13 Dec 2021 at 01:10, Romain Perier <romain.perier@gmail.com> wrote:
>> I just noticed this during testing. I think we should put this in
>> mstar-infinity2m.dts. All of the infinity2m chips use the same die
>> from what I can tell so if the ssd201/ssd202d needs this then anything
>> else that includes mstar-infinity2m.dtsi will too.
>
>
> Mhhh, makes sense.
> Do we keep the compatible "sstar,ssd20xd-timer" in this case ?
> Because this is true for either the SSR621D or the SSD201 or the SSD202D,
> so... what about "sstar,ssxd-timer", or something like this ?

I think for anything infinity2m specific we use "sstar,ssd20xd-timer"
as the SSD201 and SSD202D are the first chips we found this in.
The SSR621D might get some specific compatibles for things that only
it has broken out like the SATA.

Cheers,

Daniel
