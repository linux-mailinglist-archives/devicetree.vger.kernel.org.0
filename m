Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 771A1564A3F
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 00:06:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231555AbiGCWGW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 18:06:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231593AbiGCWGV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 18:06:21 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17D4C2BDA
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 15:06:20 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id n185so4370530wmn.4
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 15:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GB0rPcTuyggFQkhdOXa3MFwri39w7WiRZTZosC3+8Ng=;
        b=ubTvbNAH5s9i9b2BdIA5DNIveZqIBluECh3vBwr2R4xs+kFmy8Qu2mvZRtAy81NnnH
         OYwWdGC4bzoQvSz4wi0DCboNFX/8xqwCjVmBvRFSd8l8lJ2uZBYqwYYWMv9wrKhxk2aY
         EbLPuypxAONB3TQfIlHgsr681wqfKAVxWK+ovKxM2/iW637jkKwbwEnBwBB8vlAqD/xN
         3Nh2NrgstHy8Sda/cc7JgNwH7ipQrQhIhy7I+RP9/QUVcOA5pCcwCgzdTpWEKpgMfNFH
         eTYNWL5KDwx3jiFKeCzAioB/okjQdD8xGMZ0S9fycXd/tvoaX11fHSe2nyMfr5oW0n0g
         qCRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GB0rPcTuyggFQkhdOXa3MFwri39w7WiRZTZosC3+8Ng=;
        b=MINyHrfXxxuiOGOcZiwJAYCswellYP8SZK8XMfZ8q/ZhVqNLsQUSivWiIb7Vdhet+9
         bwu7IqNCkhzLppYrZvnSa8UtVzkfRPPanjKt5AShdErBc68scua6nnJU1+VvY5SUJzxz
         uOFYHaD/Bep/vV+GIkvB80unePq6eBeuxFpXJMdaZfJFRnwA0rUus4qaHSjvXaGm08Re
         1BLlCKrt9Ay2tb+e3PqkjmsIM7e2Fd5T+HV+wVyFXohVikgyK9io2+lX7B95kB6knxA8
         EFHFDdKsvenRndE9kJkU1WTb4lUmrivejqWhQJecMVzRV5suYX04QDXfeyOZXmVUP/K6
         jz1Q==
X-Gm-Message-State: AJIora87iMTKvliMH8G7W4fIt3cBnyiTI34XhTb6iszdyLqSvadUo6Nt
        qIYq3fsn0UgP8d+0uP3chu4diMGRvtSIO0x2IWR+Eg==
X-Google-Smtp-Source: AGRyM1v3HVAIU+LZ5TyTPDTD5tjgC2sVLrvdGctHfUt3z3T56rx2wbD/vOO4qu5hXM0Cqmm8wahz56yjVRjLFRwzjbs=
X-Received: by 2002:a1c:6a04:0:b0:3a0:4ddc:9a4b with SMTP id
 f4-20020a1c6a04000000b003a04ddc9a4bmr27166927wmc.78.1656885978612; Sun, 03
 Jul 2022 15:06:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220613195658.5607-1-brad@pensando.io> <20220613195658.5607-16-brad@pensando.io>
 <CAHp75Vfrgw4sf7itQ-RVjNTNOrO95YeU9ugZc9sbBUYrpda5eg@mail.gmail.com>
In-Reply-To: <CAHp75Vfrgw4sf7itQ-RVjNTNOrO95YeU9ugZc9sbBUYrpda5eg@mail.gmail.com>
From:   Brad Larson <brad@pensando.io>
Date:   Sun, 3 Jul 2022 15:06:07 -0700
Message-ID: <CAK9rFnwPd+qhSaMp5eGdGq-UnfY-D8_kYYvbHaZU=pUtBMuaNg@mail.gmail.com>
Subject: Re: [PATCH v5 15/15] reset: elbasr: Add AMD Pensando Elba SR Reset Controller
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Al Cooper <alcooperx@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
        blarson@amd.com, Catalin Marinas <catalin.marinas@arm.com>,
        Gabriel Somlo <gsomlo@gmail.com>, gerg@linux-m68k.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Pratyush Yadav <p.yadav@ti.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Rob Herring <robh+dt@kernel.org>, samuel@sholland.org,
        Serge Semin <fancer.lancer@gmail.com>,
        suravee.suthikulpanit@amd.com,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Will Deacon <will@kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

On Tue, Jun 14, 2022 at 4:47 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Mon, Jun 13, 2022 at 9:57 PM Brad Larson <brad@pensando.io> wrote:
> >
> > From: Brad Larson <blarson@amd.com>
> >
> > This patch adds the reset controller functionality for the
> > AMD Pensando Elba System Resource Chip.
>
> ...
>
> > +#include <linux/mfd/pensando-elbasr.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/reset-controller.h>
> > +#include <linux/regmap.h>
> > +#include <linux/err.h>
>
> > +#include <linux/of.h>
>
> There is no user of this header. But there are missed ones, such as
> mod_devicetable.h.
>
> Keep them ordered to easily find such issues.

Removed of.h and added mod_devicetable.h.

> ...
> > +       ret = devm_reset_controller_register(&pdev->dev, &elbar->rcdev);
> > +
> > +       return ret;
>
> It is simply `return devm_...(...);`. Looking through your patches I
> can tell that you may easily drop LoCs by 10%. Please do so in the
> next version.

Changed to return devm...(...)

> ...
>
> > +static const struct of_device_id elba_reset_dt_match[] = {
> > +       { .compatible = "amd,pensando-elbasr-reset", },
> > +       { /* sentinel */ },
>
> No comma.

Removed comma

Regards,
Brad
