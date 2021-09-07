Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6461402ACA
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 16:29:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243917AbhIGOay (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 10:30:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242953AbhIGOal (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 10:30:41 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55270C0613C1
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 07:29:35 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id u4so2285440qvb.6
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 07:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uiwuCaM/ip2ATzb/vAgsfRG3Vq6kM1/Vmxsm0eaBXgI=;
        b=XiCXDw6vd8aYNn3yIgBnPRJ7yQETxzdciXvvmMsl1G2SvyuSfFQtBFFgR3M49AgOTH
         Rul0KIxrjGx7CWfOBBTi6iu0mX4Slsg/6Fzqa8aqAOgJUCzLssfQY5c/gsnh+5z/Z5Nh
         hAQpM0QcERPuFEC042Q7IAiE5wkZPcGluh84c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uiwuCaM/ip2ATzb/vAgsfRG3Vq6kM1/Vmxsm0eaBXgI=;
        b=B0ee8hHbB6pIUOwOyBI71f2tSrN6FaghH5g1IowItwaszHzm0JmidKFDHaJJMv+3Xv
         uGbOhkcjU16Xl5JGJ0PtsfYGr9VkTLGvV5RLJfgNIfAfJp5FS0pYdjnCvTTYhONNCpWX
         yC9oAPVPnMBUkSHundI5L3B3ZBsLlgcWDEukkoUgbcIYz1a8B0d/AGmtRakOoUf5ODU5
         BQlETFn3GNcs5AA8ouMklCy3oHDX3LcEaFZq4KgyqBj3fgvts0WrJrWxJEpX0y5R6u6e
         zhEanFqUOkGUYJIthZVdVAvopogcm/B+cnrW/nXsv5PuSYTMn2/waGvgiiKPWd7Iv/74
         EtZQ==
X-Gm-Message-State: AOAM533VRubv50iwugnS3deeuS92M3wRgn1F6c8hOd383cKgwBXycTlU
        9iwwd1XysVZR/+GWCDIyneBA1GJ6n6owGzMsJwuwqQ==
X-Google-Smtp-Source: ABdhPJwPexcnMj82Bzxxv5m1UIj5BWLQNhxv3H7DGR1gOBaGw72OqIecTvWq1Mx/E8Dr3wZGy2d3qWw6p92Nx5vlNis=
X-Received: by 2002:ad4:498d:: with SMTP id t13mr14976136qvx.55.1631024974444;
 Tue, 07 Sep 2021 07:29:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210907102722.47543-1-bert@biot.com> <20210907102722.47543-5-bert@biot.com>
 <CAFr9PXmCKPfdHnHU7=ALh=j2SDf71ibd8kEnLTK6aPN1vmQVdg@mail.gmail.com>
 <CAK8P3a21N8khjyV-f=p28ZogoakhLTrkoPBd6PeXrigba=7-TQ@mail.gmail.com>
 <CAFr9PXn4JXGKSCDNeKMJDPgfezktyfBsTcq8GErt+ROuumDgrg@mail.gmail.com> <CAK8P3a0y0PhmOdMPnx10zG6s6RfiuC9Ju9s5SMnOk8oZ+cAFMw@mail.gmail.com>
In-Reply-To: <CAK8P3a0y0PhmOdMPnx10zG6s6RfiuC9Ju9s5SMnOk8oZ+cAFMw@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Tue, 7 Sep 2021 23:32:20 +0900
Message-ID: <CAFr9PX=Oi-HJYUFBfJn4pHUSk=drf7otyx473hvq1UC5_gaTHQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] ARM: Add basic support for Airoha EN7523 SoC
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     Bert Vermeulen <bert@biot.com>,
        Russell King <linux@armlinux.org.uk>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Anshuman Khandual <anshuman.khandual@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        John Crispin <john@phrozen.org>,
        Ard Biesheuvel <ardb@kernel.org>,
        YiFei Zhu <yifeifz2@illinois.edu>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Mike Rapoport <rppt@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd,

On Tue, 7 Sept 2021 at 23:12, Arnd Bergmann <arnd@arndb.de> wrote:

> > I think the broken memory controller is still there so somehow I'd
> > need to get the heavy barrier to work in arm64. I haven't yet worked
> > out if that's even possible.
>I think I missed that part of the discussion, or I forgot about it already.
>What is the issue you are referring to here?

Sorry. I should have put a bit more context. This is for the SSD268G
not the original target of this series. But a similar situation.
The SSD268G (according to the decompiled device tree) is the same
hardware as the MSTAR_V7 chips but with a Cortex A53 instead of the
Cortex A7.
So it probably has the same memory controller as the MSTAR_V7 stuff
and that memory controller is not coherent so it needs the kernel to
make sure memory requests are flushed out to memory before DMA
happens[0]. For arm I fixed that with the heavy mb callback. With
arm64 I have no idea how to fix that.

I'm interested to see how this Airoha EN7523 series goes as if/when I
push anything for the SSD268G it'll probably only be for a 32bit
kernel.

0 - https://elixir.bootlin.com/linux/latest/source/arch/arm/mach-mstar/mstarv7.c#L61
