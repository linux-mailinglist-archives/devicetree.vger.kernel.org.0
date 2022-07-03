Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0F16564A38
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 00:03:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231961AbiGCWD4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 18:03:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232220AbiGCWDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 18:03:55 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8768E2BDB
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 15:03:53 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id b26so10916439wrc.2
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 15:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/xQhicMlo40PEYHEa+HtFNXOuSyAFEaSrHVHB9mDE+w=;
        b=J7IGjji+2MeqboyKlAyhT9occA5StCISxg7V+178S7fH9u89Xeeds7Gw2Yi/Iejd/w
         h3fgf2BUvt73wKg3vxi7r+Xnjoag35ngaWDSN6KiM84DvDWYEHwE3wIDC+eLuAAoGCxD
         coVhyq25rA2saP0tCYdNl3Wtxh7aU/Zi1M71lpNct6r4FPNzp3lmzDXyZ5HuDExuzVDh
         laH2HqaU9PQGwqW4TPXtIhwlEJFbB5f8M8iwyP0Hg+ScnwvQNvPcJhNt40aXkkF1qTCC
         exNJ4AUyjH5SC6NkXAuvwgj5zgF3XPN7RUiralscFib6/BIz+sNzE8hN5SH41hJ14lSc
         Wwhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/xQhicMlo40PEYHEa+HtFNXOuSyAFEaSrHVHB9mDE+w=;
        b=xa0j5BebGvzSN0rLZbk6RZe+P5ciZLZCE6O3Jbyk40yseAX/nCApkXswrGzf9+8Pww
         /bWvXDyIxpBTrqA+MCoF6pfcJHnamHHhTpeDopxkg70D5kPjrjGIWHK2zDHrp+OXUbSn
         WiFbDgpKANDi4Gtmq1PXmA8r73ESlg1or6iJgDoUcS6ufGVrVmYCYc+UBIopDlL7rers
         hzB7LzTXE5Se92cVd1+COcZUZxsHR7wcto6sqICguiB6kUPXtN6n4+gtfyF3HH7g8Xhr
         XVPAwS7xlhGcMTcNoZJh6B27rB6fMN078Kstm5neTR3nZh1DhY4O1e/f+4eC+lnU9+KM
         nyvg==
X-Gm-Message-State: AJIora9Avc18sGbbPMxdtsFKX/J6VlP14L2flTzzO2YoxPXSvGzT4lrO
        EVggNgZmMAsiqAJgRbPm94MMcU0QWYWgGzuqG5YZsA==
X-Google-Smtp-Source: AGRyM1tuU27Sd3adoglvl1Seo9Iys1g+XufZY6cogvzB+U2PQMuJVHpa8rlfUmfmSq9REo2HZnjnobGZgQ1e1QIinoA=
X-Received: by 2002:a5d:5a15:0:b0:21d:630c:a609 with SMTP id
 bq21-20020a5d5a15000000b0021d630ca609mr7051364wrb.468.1656885832059; Sun, 03
 Jul 2022 15:03:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220613195658.5607-1-brad@pensando.io> <20220613195658.5607-16-brad@pensando.io>
 <a929309891f9f28ae71f7ee09e990dc8bc362fdf.camel@pengutronix.de>
In-Reply-To: <a929309891f9f28ae71f7ee09e990dc8bc362fdf.camel@pengutronix.de>
From:   Brad Larson <brad@pensando.io>
Date:   Sun, 3 Jul 2022 15:03:41 -0700
Message-ID: <CAK9rFnw0s4bVT0TV05EhL+znbJscLmSJKaQkJBtBDKpy+cqE8Q@mail.gmail.com>
Subject: Re: [PATCH v5 15/15] reset: elbasr: Add AMD Pensando Elba SR Reset Controller
To:     Philipp Zabel <p.zabel@pengutronix.de>
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
        Pratyush Yadav <p.yadav@ti.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Rob Herring <robh+dt@kernel.org>, samuel@sholland.org,
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

Hi Philipp,

On Tue, Jun 14, 2022 at 7:49 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> Hi Brad,
>
> On Mo, 2022-06-13 at 12:56 -0700, Brad Larson wrote:
> > From: Brad Larson <blarson@amd.com>
> >
> > This patch adds the reset controller functionality for the
> > AMD Pensando Elba System Resource Chip.
> >
> > Signed-off-by: Brad Larson <blarson@amd.com>
> [...]
> > diff --git a/drivers/reset/reset-elbasr.c b/drivers/reset/reset-elbasr.c
> ...
> > +static inline int elbasr_reset_shift(unsigned long id)
> > +{
> > +     switch (id) {
> > +     case EMMC_HW_RESET:
>
> Are there more reset controls than EMMC_HW_RESET?
> If so, please list them all.
> If not, why is this a function with a switch statement for a single
> reset bit?
>
> > +             return 6;
> > +     default:
> > +             return -EINVAL;

There are others but only emmc hardware reset is currently needed/used.  Removed
the switch and just using BIT(6) and removed file amd,pensando-elba-reset.h.

> The error return value is never checked.
> This can't be reached, since ELBASR_NR_RESETS == 1. So id will only
> ever be 0.
>
> > +static int elbasr_reset_probe(struct platform_device *pdev)
> > +{
> > +     struct elbasr_data *elbasr = dev_get_drvdata(pdev->dev.parent);
>
> Peeking into the MFD driver's private data structure seems unnecessary.
> Consider using dev_get_regmap() instead.

Prefer to keep it this way as it follows the approach of existing
driver reset-a10sr.c

Regards,
Brad
