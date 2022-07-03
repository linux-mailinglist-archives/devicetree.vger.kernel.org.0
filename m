Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BB585649DE
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 23:09:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229682AbiGCVJT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 17:09:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiGCVJT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 17:09:19 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2149B2628
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 14:09:16 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id r81-20020a1c4454000000b003a0297a61ddso6862036wma.2
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 14:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PJikOAGFfDOpaBAb8R9M4tTzS49h3/owJMg980ZRk/E=;
        b=HPOrwTANUSSTyUglOWfmqx3TAqE59f1wu5TsnpCDbHlYvitgr1ZYre1PF8zwpEk8bR
         7UVh+tTk79uqQRVgs7gBfdpxq1GreddUhZgX0R7RwKdk1qvKIjYI0Jk/OsW8mGXeDqdc
         bjJ/CDRVHPT9FVve0A6AvaQBdGHEBYPr7EwQp5jQeX2drM0MLNY+QZCYA21abBAmPK1R
         n2S8xHUeO6ndniVe8n0+bXjfC9c5jF3el+RkuFqchYHEOSmWfjmXe9syHn0g3zXpGTzD
         05l2Lv9lChwU5sXvfiOpnCTIcdCtNjy+vrlzShYwBTf6f/ISAn+zwKtguJ7v+eIg/i99
         uwZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PJikOAGFfDOpaBAb8R9M4tTzS49h3/owJMg980ZRk/E=;
        b=1/EkctgkWcCUuJnuMnaiDpAX6vQ9ISjbfA0HlT06/QEoPC7Le4DdGMd4DFFPJJu544
         CqF5fv605V/gN7X/5HnoiDbq2KCcIwRwajp28yugASEFM9IQn/iPHjbbrWTpIV5nwFo6
         B48K8U/NSilxZDH9WNEbSLMWPV5aqM+fbXA8UGfAB1ksIne/FMX7pvZRZqyCBLDXX+oE
         i8M+wlFh55WFp6AxG3cfnAieFckjj2mdUn3M7LjUk/sSK5OQHNjgy9aZQYzuQjzLGGKf
         zTxlacr5iFrjPE4Qd3e9CalKvi2ye9aQU0HGEh8ISFvBzD7erDqsmLDqmY9zUnqF6YIb
         wFQw==
X-Gm-Message-State: AJIora+sQCzzLircIQSElq+KykCbcgeQtwU81ZJKvnico2Kfjbz2KiRE
        oSXE+eFmMKdYTD3FoHHtGIw93grjwWm5UuVdnp2prw==
X-Google-Smtp-Source: AGRyM1vOEFsk6GxoOvERE6U0eWZvAYgZwMy1flCmqTZIailGzmdOzuiBfuHPrbNr3nr7glQpb5XbCjfw5CdVvGxO4yc=
X-Received: by 2002:a05:600c:3505:b0:3a1:9fbb:4d59 with SMTP id
 h5-20020a05600c350500b003a19fbb4d59mr4089664wmq.165.1656882554615; Sun, 03
 Jul 2022 14:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220613195658.5607-1-brad@pensando.io> <20220613195658.5607-12-brad@pensando.io>
 <Yqh4fO/OFW6DKmyX@sirena.org.uk>
In-Reply-To: <Yqh4fO/OFW6DKmyX@sirena.org.uk>
From:   Brad Larson <brad@pensando.io>
Date:   Sun, 3 Jul 2022 14:09:03 -0700
Message-ID: <CAK9rFnwfTza6dVehO6mmiae=9yKXdJFXUetjW3BuGtEasgp1-Q@mail.gmail.com>
Subject: Re: [PATCH v5 11/15] spi: cadence-quadspi: Add compatible for AMD
 Pensando Elba SoC
To:     Mark Brown <broonie@kernel.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>, alcooperx@gmail.com,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, blarson@amd.com,
        catalin.marinas@arm.com, gsomlo@gmail.com, gerg@linux-m68k.org,
        krzk@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lee.jones@linaro.org,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        p.zabel@pengutronix.de, Pratyush Yadav <p.yadav@ti.com>,
        rdunlap@infradead.org, robh+dt@kernel.org, samuel@sholland.org,
        Serge Semin <fancer.lancer@gmail.com>,
        suravee.suthikulpanit@amd.com, thomas.lendacky@amd.com,
        Ulf Hansson <ulf.hansson@linaro.org>, will@kernel.org,
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

Hi Mark,

On Tue, Jun 14, 2022 at 5:01 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Mon, Jun 13, 2022 at 12:56:54PM -0700, Brad Larson wrote:
>
> > +     /*
> > +      * If a hazard exists between the APB and AHB interfaces, perform a
> > +      * dummy readback from the controller to ensure synchronization.
> > +      */
> > +     if (cqspi->apb_ahb_hazard)
> > +             (void)readl(reg_base + CQSPI_REG_INDIRECTWR);
>
> You shouldn't need the cast here.

Removed (void) cast

Regards,
Brad
