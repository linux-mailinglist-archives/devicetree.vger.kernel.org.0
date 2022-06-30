Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B26F1561561
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 10:46:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233770AbiF3IqW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 04:46:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232862AbiF3IqV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 04:46:21 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F40F131373
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 01:46:19 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 205-20020a1c02d6000000b003a03567d5e9so793151wmc.1
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 01:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=sPtsGsGxiY0pUJurJivkSz6fB7RJpCiec1m/UGMaAjk=;
        b=DBAJoYyq7Z73P2+PdO6gsa3dmnvFmEowkOKISZ9iJz6pAEmXXVZIgWfDMriW3xYBnH
         GvMAPIj6o3sVkw5riTDzKq9KZMiOj1coVvIRjSlknhw4w6M1BeyL7uLLQFetLUzNyR72
         EQdNsTFZ8oSwNpP04o1/ZP0FjCouCsFW7TjNau7dO4vIpECdQzO1JUF/KoMzvPIFS3w8
         bZ1zc8HlZdn+PdVg2BOhAx7Rwem9CD3pgAiW2MLDZ+K7avrwqUxnzrIKwYfeS4F1IiDP
         EFPOXND2h1M2PUGx0GlTy7INVMXhhVJMynpsuiuTvBCJ4ug9aUl40GOpmGpFrBzp8pwS
         q+Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=sPtsGsGxiY0pUJurJivkSz6fB7RJpCiec1m/UGMaAjk=;
        b=YhekEBzqP7aUnl3YWv/1Rjexd3gCq4bqvE1OkXW8F3oAxuP+UsVjfAbWPhd+IbV6mm
         6ek7IDU31RhOdYK7Fw6gIP9avKxWSw6KrotoULGZxQ+QJ/e1s80IhUs37eBLwx+RC1Sf
         fctCoeHnYFKyfDZIJRDpODDj6rVk0ShGeLjqw1+oRz7rgb3lhr5DpKwwIqsncDxDLo4M
         yk9Jh5YxIw+LaqfY6TG8RgAMMagct1arwD3djX8N4j3mTCld0d7IMCpT+nxC1ZUp0Mu7
         M/q1bFApc6tnUA8516xCpmjYoi/UUTbUt4d1TuRQnpCUCxzmKkuYPIUUNh7k9Pvw+zfw
         v6Jg==
X-Gm-Message-State: AJIora+6FokxMZpj+Nmxcw+iGYA8MoqrSFSTuFXIdItodWLJFvz9Qtek
        mX3MaBV85xbBjZZOLqMV24n18Q==
X-Google-Smtp-Source: AGRyM1ugh7ioXGoQUFDmXtrKxolSnmDVjP63pLV19ZWBQnnH2IWw2DyBym1XDSOSurWwcmKuA1D5Sg==
X-Received: by 2002:a05:600c:4e51:b0:3a0:4e8d:1e44 with SMTP id e17-20020a05600c4e5100b003a04e8d1e44mr8845997wmq.105.1656578778595;
        Thu, 30 Jun 2022 01:46:18 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id l1-20020a5d4bc1000000b00219e77e489fsm18371784wrt.17.2022.06.30.01.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 01:46:17 -0700 (PDT)
Date:   Thu, 30 Jun 2022 09:46:15 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     Aidan MacDonald <aidanmacdonald.0x0@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, quic_gurus@quicinc.com,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Michael Walle <michael@walle.cc>,
        Randy Dunlap <rdunlap@infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>
Subject: Re: [PATCH v4 00/15] Add support for AXP192 PMIC
Message-ID: <Yr1i19uttBub3G8P@google.com>
References: <20220629143046.213584-1-aidanmacdonald.0x0@gmail.com>
 <CAHp75Vc=PWXauEKDNX+vmqv=oO1LDv8-GgU3OFZXjf8yJrG8wA@mail.gmail.com>
 <CAHp75VeqvCnWtWLF1zySPGkfBT5obosu0h_pZEhz+pOQWzMdWQ@mail.gmail.com>
 <Yr1W/m6UV3792GvF@google.com>
 <CAHp75VdC=Dw_YnTuzZ+PMLfr0y1NcH2DQ1bRccU8e=cGLWznuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHp75VdC=Dw_YnTuzZ+PMLfr0y1NcH2DQ1bRccU8e=cGLWznuQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Jun 2022, Andy Shevchenko wrote:

> On Thu, Jun 30, 2022 at 9:55 AM Lee Jones <lee.jones@linaro.org> wrote:
> > On Wed, 29 Jun 2022, Andy Shevchenko wrote:
> > > On Wed, Jun 29, 2022 at 11:14 PM Andy Shevchenko
> > > <andy.shevchenko@gmail.com> wrote:
> > > > On Wed, Jun 29, 2022 at 4:29 PM Aidan MacDonald
> > > > <aidanmacdonald.0x0@gmail.com> wrote:
> > > > >
> > > > > Changes in v4:
> > > > >
> > > > > * Drop regmap-irq patches and rebase on top of the regmap-irq
> > > > >   refactoring series[1], which implements the same functionality.
> > > > > * Reorder mfd_cells, putting one-line entries at the bottom.
> > > > > * Fix incorrect example in axp192-gpio device tree bindings.
> > > > > * Perform adc_en2 flag -> adc_en2_mask conversion in axp20x_adc
> > > > >   as a separate patch.
> > > > > * Simplify axp192_usb_power_set_current_max().
> > > > > * Drop unneeded OF dependency in pin control driver, and document
> > > > >   tables used for describing register layouts.
> > > > > * Various style fixups suggested by Andy Shevchenko.
> > > >
> > > > For patches 6-11
> > > > Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> > >
> > > Ditto for patches 13-15.
> >
> > Not sure `b4` will pick these up!
> 
> No it won't. But it's not an issue, one may use `git msg-filter` for
> that, esp. taking into account that series most likely will be resent
> due to patch 12 (`but not fully sure it will be the case).
> 
> For your convenience I have added on per patch basis.

That helps, thanks Andy.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
