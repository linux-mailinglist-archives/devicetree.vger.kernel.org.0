Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 275D34028BD
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 14:28:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343995AbhIGM3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 08:29:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343992AbhIGM3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 08:29:03 -0400
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5408C061575
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 05:27:57 -0700 (PDT)
Received: by mail-qt1-x82c.google.com with SMTP id x5so7705709qtq.13
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 05:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WazygCXGIt0oTRoPxuhpgEJkZwMCzOdNrpXcapD6IMQ=;
        b=L/y9MxYCco9ZCQyc7JqOQbveaeL7yhvAnHpMIYeiTpx4hjqmrG9hQodGGT0d8VXqOu
         Gm9iF1/C4HrM5ieUokxjwdIYYjmZjyPchGaP1OcYUcTysdb5DbH5xwBN767Ma7PsGcH+
         DRCXRFH4B6TKGbm5fbOezD0Ki16vHifMMKQpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WazygCXGIt0oTRoPxuhpgEJkZwMCzOdNrpXcapD6IMQ=;
        b=Vlpc7eEishXQy9O6YF1IOI5BIMofV4ZRmgmNIQ3DQCtOXQS34WgMfQDyhG8SeiLS2h
         7yku3kfThp6zDLvXHTfttvc6urLeMMo5pwUW64Vhymanc1VoAawGLqIKzCSBbodpVrXd
         cKbJKiXRRb1lm9WRyy9e2OBebwfs+OWumrCl3RYnVDUa2s09XDx0J5MLTBMPB/qs3oCD
         Ee14HRWVgH20SCOVYyl9VL0MgemMk72sad7WM4id0TnQSTwei2VA4FXAtjQsmxmJaBpg
         LuLYi4gQ71Y2qxUbvbGmAS1elaOUioXGu8bRRplWwUHvdDib38ao8ud3a6E8MmEX3dnr
         N/QA==
X-Gm-Message-State: AOAM533atVFJgqwiSbbojXo7FT50vtaU4o5UyedzatzzrtNFjN0ucMYP
        +LrV5HBMNVkCYxah6e7NDM4GlEBEqYCDqMkD6uXV9Q==
X-Google-Smtp-Source: ABdhPJyi+j+8R4WVWLZ33fUYunDQD0QKbKyw0r+Z98UCxjGkJzFsMjOjzhdmUuElK2X1vli9DvbtMH6AQV9U8Cf1ugY=
X-Received: by 2002:ac8:5a13:: with SMTP id n19mr14999884qta.380.1631017676983;
 Tue, 07 Sep 2021 05:27:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210907102722.47543-1-bert@biot.com> <20210907102722.47543-5-bert@biot.com>
 <CAFr9PXmCKPfdHnHU7=ALh=j2SDf71ibd8kEnLTK6aPN1vmQVdg@mail.gmail.com> <CAK8P3a21N8khjyV-f=p28ZogoakhLTrkoPBd6PeXrigba=7-TQ@mail.gmail.com>
In-Reply-To: <CAK8P3a21N8khjyV-f=p28ZogoakhLTrkoPBd6PeXrigba=7-TQ@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Tue, 7 Sep 2021 21:27:46 +0900
Message-ID: <CAFr9PXn4JXGKSCDNeKMJDPgfezktyfBsTcq8GErt+ROuumDgrg@mail.gmail.com>
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

On Tue, 7 Sept 2021 at 20:52, Arnd Bergmann <arnd@arndb.de> wrote:
> > Off-topic but related:  Another MediaTek spin off, SigmaStar, seems to
> > have done exactly the same thing. Cortex A53 chip running as a 32bit
> > system to avoid having to fix their software. I'm interested to see if
> > this makes it into arm or arm64. :)
>
> Maybe it's best to just add them to both at the same time? The boot
> loader situation might take a bit to work out, but in theory this should
> be fixable.

I wonder how fixable it would be..

I haven't gotten a board with the chip in question (SSD268G) yet but
from looking at some firmware binaries I can see that even u-boot is a
6 year old 32bit version.
As far as I can tell there's no PSCI, ATF etc that I think would be
expected for an arm64 machine.
I think the broken memory controller is still there so somehow I'd
need to get the heavy barrier to work in arm64. I haven't yet worked
out if that's even possible.
I think they are advertising that it supports up to 2GB of DDR. So
it's a hobbled 64bit capable system with highmem.

Putting most of the DT bits under arm64 even though it's so broken
it'll only ever boot a 32bit kernel makes sense to me.
Better than having lots of arm64 typical stuff like a newer GIC in a
file under arm and confusing everyone that comes across it.

Cheers,

Daniel
