Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AC7E60E135
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 14:51:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233807AbiJZMvd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 08:51:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233619AbiJZMvc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 08:51:32 -0400
Received: from mail-vk1-xa2c.google.com (mail-vk1-xa2c.google.com [IPv6:2607:f8b0:4864:20::a2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6C05DD899
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 05:51:30 -0700 (PDT)
Received: by mail-vk1-xa2c.google.com with SMTP id g26so731224vkm.12
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 05:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MsB4qBPjpgcHYx8+lcYwIXJdnA7utXxH3W08banDjGA=;
        b=cUNXi01PsdzbRkMp5m1ITjc2gBs2EHihS/51UX4cHPIkUj1fpNEpEHKaBMn2m35GsU
         uzSPYP81x/0SLimTifYkmX6MTJ+++X4sDUoOllxjzcyBDFTB2V/sc227exQrVW7e39UH
         baUqytjfMAZpVFxGgqL52HXnZyJMoRhbLyF9qcYO5KApbotQoFDpoPI7qXlANSqWmS6c
         7Xma+cyEeGFm+xzEQs0wQgHY1p7Bqc4/qUpjJwYLJOkKi4892Oy2BVmglpD93Wx6YeW1
         06FV8bABkl+I0DrlaKDYEF9VnV4yg+BwxQ0QH2wJpG7Lbn6lMrIU1VkStIGge0XWy0qz
         mM+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MsB4qBPjpgcHYx8+lcYwIXJdnA7utXxH3W08banDjGA=;
        b=vsAUj6bBBL03HnJqii0LyDxvXWIBX6acSOHWqIx/xV7WENkz3XSxWvTbHnhlLkP7T9
         3QSKLBj7/k2j1PpplWkMiJ/CqlEE/YE6BXRSNk0tb7IkJdlVGDa5o1cBmRM0XyuBQKZJ
         D80aPx8Yy99khWAkQhltmePGGlKEt0DJtKTVU4A3DQjOWfRaMbKeLwtS30OhOtrbKs/b
         KqmOJoNLkqzfsn/ZpueERnuCpdpBVwmMACDvoHFNstCfYOPz2NFSdKtONJMS8zV8v8yP
         a13EquG+/fz8XyOImfwre7/Ege6GStii8V0PVvCxRyhGv6+Rm7rA4+QjY0w9eyOjlCVa
         jKTw==
X-Gm-Message-State: ACrzQf2EN/8P+0dqqci+QmvjcMJOWL3BXmBrxhPaf5VBMg+JkNc/UHN3
        w4nV6O40zci/6jgk6ddOhJ0QrF4ukAMmF+tbNwNVRw==
X-Google-Smtp-Source: AMsMyM5GucTb1XadTqwakxDzlyW8r6GrVuewHRaRjn8hZX0HjTZCuTijjuXPgFxsmpOVQtP+q5ZH6O3f+Hfa0Ds0KCM=
X-Received: by 2002:a1f:2455:0:b0:3b7:88a4:c121 with SMTP id
 k82-20020a1f2455000000b003b788a4c121mr5738060vkk.1.1666788689808; Wed, 26 Oct
 2022 05:51:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220930102259.21918-1-shubhrajyoti.datta@amd.com>
 <20220930102259.21918-3-shubhrajyoti.datta@amd.com> <CAMuHMdUAcA=4Xcgr9hHgT5cro=s0mvAQqHmco0-e-NvWKJmrCA@mail.gmail.com>
 <Y1keKRzBhSDi671j@smile.fi.intel.com>
In-Reply-To: <Y1keKRzBhSDi671j@smile.fi.intel.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 26 Oct 2022 14:51:18 +0200
Message-ID: <CAMRc=MfR14_Pd57AgqyGTRsghb7OjyPNOyoWmvnae5i=Fnznug@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] gpio: pca9570: add a platform data structure
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-gpio@vger.kernel.org, git@amd.com,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, linus.walleij@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 26, 2022 at 1:46 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Oct 26, 2022 at 12:00:34PM +0200, Geert Uytterhoeven wrote:
> > Hi Shubhrajyoti,
> > On Fri, Sep 30, 2022 at 12:41 PM Shubhrajyoti Datta
> > <shubhrajyoti.datta@amd.com> wrote:
>
> ...
>
> > Thanks for your patch, which is now commit 35a4bc94a47f2ea6 ("gpio:
> > pca9570: add a platform data structure") in gpio/gpio/for-next
> > linux-next/master next-20221026
>
> Dunno if Bart rebases his tree...
>

I will back it out of next. Shubhrajyoti: can you send a fixed version
of this series?

Bart

> ...
>
> > >  static const struct of_device_id pca9570_of_match_table[] = {
> > > -       { .compatible = "nxp,pca9570", .data = (void *)4 },
> > > -       { .compatible = "nxp,pca9571", .data = (void *)8 },
> > > +       { .compatible = "nxp,pca9570", .data = &pca9570_gpio },
> > > +       { .compatible = "nxp,pca9571", .data = &pca9571_gpio },
> >
> > This breaks bisection, as .data is still considered to be the number
> > of GPIOs:
> >
> >     gpio->chip.ngpio = (uintptr_t)device_get_match_data(&client->dev);
>
> You beat me up to it, I have also noticed this.
>
> > >         { /* sentinel */ }
> > >  };
>
> --
> With Best Regards,
> Andy Shevchenko
>
>
