Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C36F9564A89
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 01:24:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231569AbiGCXYT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 19:24:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbiGCXYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 19:24:18 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6803271F
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 16:24:17 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id s1so11025391wra.9
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 16:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+SrqIW34AjFbZmMaYUREgVew+EkjbRkWGdQzlKX5pYM=;
        b=LtX4h8J6Zs44uTrB55u4wk7Bv0k+Fu8IQesnHE/LJDVzldiS1rLasN8CFxMk3rheJn
         dJJewgoCajXoXyPZcAZ7VZJ0o8zbgmxRlv1CTD+Z6u0avrH+CYwhY+NqdbT1bHyR398l
         dMXmiZ0DYmQ7KfjahfnncgOX2dZHhjnVK2tkwRDSIGD2PYACdL1PlGO1CEdRKQPXmiLj
         W8ncmw/ItuytTnhNuOSWwbt4OSfG3ILNrg6lQ3DJGDJTQCKOSwOizxPOzwhoxxbp9G5n
         hgfNlKiGcox8q8afEB0rRMX+jH163vwqDzHdUNdMcwr2zjcYvKRaa/gX9l1jbm58XKX5
         aygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+SrqIW34AjFbZmMaYUREgVew+EkjbRkWGdQzlKX5pYM=;
        b=JqWvbkBoim7h5AsAh65Gd0uyYkmarGpKqw0ZEqMDVYc2862S0LQlCY4hrIhrl+y4hH
         Fh09s9lECdVbi6OnPH+VPj7UM0tWAt1gvwiWuqdoeK8Pc6rdgcPCgJus2pFBv4S+UDM+
         mINpsVzLmjLLRluNThitYMgcfzkhBnKHuPwYEqcsBs03CN7kDa4LpCCsyfeZYXptXrQP
         SGFdDhUQ5hlcdRQX6rSbaO5HCQ49s0Lt88pZTY/7RA2YhsRuVwi2pXeyrK0NaHkcnAfR
         kOCkvbMCsjlEFuQCX3k2shTPjCGWSr1xbSEq//mQgZCXQe2vYc4QydfREyQBPR+dl7sN
         q/mg==
X-Gm-Message-State: AJIora9C6ES4ryNiWIipIUXpgPAysKaxFNsFyWr7po+JvGuci3lE3b0b
        md/HboVoeIW5e3naAXqWyHLz1jjGA1Ers4lCtELirw==
X-Google-Smtp-Source: AGRyM1ukXmbDBTUmgfEPfq4g0fSzjZCODNwoenxaj+ZuQ6nSFKMHhpapVUul8KEv56TfB2SshRb0iwtzlnz8MQ5zEAU=
X-Received: by 2002:a05:6000:192:b0:21a:3c91:df05 with SMTP id
 p18-20020a056000019200b0021a3c91df05mr25306379wrx.655.1656890656277; Sun, 03
 Jul 2022 16:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220613195658.5607-1-brad@pensando.io> <20220613195658.5607-16-brad@pensando.io>
 <20220614213428.GA2684278-robh@kernel.org>
In-Reply-To: <20220614213428.GA2684278-robh@kernel.org>
From:   Brad Larson <brad@pensando.io>
Date:   Sun, 3 Jul 2022 16:24:05 -0700
Message-ID: <CAK9rFnzy6GTg+DYicrSzgXpRCO3XgFtVDP1Fjg=oiUgZusNn_Q@mail.gmail.com>
Subject: Re: [PATCH v5 15/15] reset: elbasr: Add AMD Pensando Elba SR Reset Controller
To:     Rob Herring <robh@kernel.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Al Cooper <alcooperx@gmail.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, blarson@amd.com,
        Catalin Marinas <catalin.marinas@arm.com>,
        Gabriel Somlo <gsomlo@gmail.com>, gerg@linux-m68k.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Pratyush Yadav <p.yadav@ti.com>,
        Randy Dunlap <rdunlap@infradead.org>, samuel@sholland.org,
        Serge Semin <fancer.lancer@gmail.com>,
        suravee.suthikulpanit@amd.com,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Will Deacon <will@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tue, Jun 14, 2022 at 2:34 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Jun 13, 2022 at 12:56:58PM -0700, Brad Larson wrote:
> > From: Brad Larson <blarson@amd.com>
> >
> > This patch adds the reset controller functionality for the
> > AMD Pensando Elba System Resource Chip.
> >
> > Signed-off-by: Brad Larson <blarson@amd.com>
> > ---
> >  drivers/reset/Kconfig                         |  9 ++
> >  drivers/reset/Makefile                        |  1 +
> >  drivers/reset/reset-elbasr.c                  | 94 +++++++++++++++++++
> >  .../reset/amd,pensando-elba-reset.h           | 11 +++
>
> This goes with the binding patch

I must have misinterpreted an earlier request to put the bindings
separately up front in the patch set.  For a new driver the binding
and driver should be in one patch which I'll change for the next version.

> ...
> > --- /dev/null
> > +++ b/drivers/reset/reset-elbasr.c
> > @@ -0,0 +1,94 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>
> Kernel code is GPL-2.0-only generally.

Did something change versus earlier request for dual license?

> Re: [PATCH v3 11/11] arm64: dts: Add Pensando Elba SoC support
> - by Rob Herring @ 2021-10-27 21:37 UTC [8%]

> > +// SPDX-License-Identifier: GPL-2.0

> Do you care about using with non-GPL OS? Dual license is preferred.

Regards,
Brad
