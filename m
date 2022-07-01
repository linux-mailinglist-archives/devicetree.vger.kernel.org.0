Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1CB2562CCE
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 09:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235392AbiGAHiH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 03:38:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235367AbiGAHiD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 03:38:03 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE2F76D567
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 00:38:02 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id bi22-20020a05600c3d9600b003a04de22ab6so1040139wmb.1
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 00:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=/vcgopOT2upUpDmIm53joh9K47D2C5Zrxpx/Q99r1iw=;
        b=xfHF/7sOVLQbcrw/u3cF6Y/rTHyKvSuiPGBZUlQlW0fyz927MfEa67jigZSFeshdEL
         yMFSBaIcRtVUERLtB/GAYRjMhdzLnJzIcHF8pnaRINLo9ckajo59vti4plXq10oog7pZ
         EeDyAoqjphNoN5236krqhyHl3y0h+UWKpHsiR/PDg/ND3svkTPKOhe4ovChPuaaLfjMS
         j1+kQgPn+mvEcP7wcb2nE6Rl+ojqrJgN26I9/eKlf38Bn7EFV9Stywa3xRYiT5cmLc0H
         vJ7C0Y1m6n1PEyz8gkUYAXd8YKIBMOjpMM/+nm3XEEWVSejX9AcnqAR6iAABNbcc5m6y
         dbrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=/vcgopOT2upUpDmIm53joh9K47D2C5Zrxpx/Q99r1iw=;
        b=Q0+meIBsfH4NKaRqTvC/LgtUbXdsg35ZrWFC+GV6FKIxdgGuMFS2P3MCelk5rqNqB+
         BdMKIvfK8Y7u0WCWT8bxYjZi4Kp7QPly1Cw1+94uEidsgFfiByvhp9t37dHetfDfuBip
         pnSjZrBcHVGM8C2BJ/4af1uSnJTQy1hLlA5XaL+y14Ipm6YrkukLsWCp6jCmrE1BgBlB
         XZHxWZAVHyqTdtvMn+d96V8ogfqs5kF032I76eEdlGzQdZm08V7eC6olFmGUD3R51OqF
         9GFe01aSZa3lR19d0T9AN8fRBfBX/g8I/pCHmtawVkFvMEmpFw5RiPviLKwym6ySwRx/
         ZmRQ==
X-Gm-Message-State: AJIora/GuDokLDstJ8GPp1OxQsMZe+2+x+2AAvxsqEIrQMW7DOImIvf3
        3zhP1HdstTEnsOLYYXCcuqV0cw==
X-Google-Smtp-Source: AGRyM1vhl++y9Dmpa+muBRGRxUCfXmkkzS/X7bXlmXQMyI/GPJ2xIFIFzE2c8uw8U5HACanB9o7Y3g==
X-Received: by 2002:a7b:c310:0:b0:38c:f07a:e10d with SMTP id k16-20020a7bc310000000b0038cf07ae10dmr14732650wmj.110.1656661081441;
        Fri, 01 Jul 2022 00:38:01 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a5d43d1000000b0021b95bcaf7fsm21253318wrr.59.2022.07.01.00.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 00:38:00 -0700 (PDT)
Date:   Fri, 1 Jul 2022 08:37:58 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     ChiYuan Huang <u0084500@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>, dmitry.torokhov@gmail.com,
        Liam Girdwood <lgirdwood@gmail.com>,
        cy_huang <cy_huang@richtek.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
        linux-input@vger.kernel.org
Subject: Re: [PATCH v2 2/4] mfd: rt5120: Add Richtek PMIC support
Message-ID: <Yr6kVg2OlHkm6+bB@google.com>
References: <1655892104-10874-1-git-send-email-u0084500@gmail.com>
 <1655892104-10874-3-git-send-email-u0084500@gmail.com>
 <Yrm9ObaltUiQUTqS@google.com>
 <CADiBU3802sLTPjrGiaQ-xw-2jep1UXo+t7pYc6bCC4MiJLhOyA@mail.gmail.com>
 <CADiBU3838Mgi3sqv+R_=8g-ROTrbN45AKPaTS_9GCWVDYASMyg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADiBU3838Mgi3sqv+R_=8g-ROTrbN45AKPaTS_9GCWVDYASMyg@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 01 Jul 2022, ChiYuan Huang wrote:

> HI, Lee:
> 
> ChiYuan Huang <u0084500@gmail.com> 於 2022年6月27日 週一 晚上10:56寫道：
> >
> > Lee Jones <lee.jones@linaro.org> 於 2022年6月27日 週一 晚上10:22寫道：
> > >
> > > On Wed, 22 Jun 2022, cy_huang wrote:
> > >
> > > > From: ChiYuan Huang <cy_huang@richtek.com>
> > > >
> > > > Add Richtek RT5120 PMIC I2C driver.
> > >
> > > Why a whole new driver?
> > >
> > > How different is this to rt5033?
> > >
> > > Looks like this could easily be woven into this existing support?
> > >
> > It's different with the function domain.
> > RT5033 is most like as the SubPMIC that includes PMU (battery
> > charger/gauge/led/few buck and ldo)
> > RT5120 is a main PMIC with default-on power that follows the boot on sequence.
> > RT5120 only integrates regulator and power key report module.
> >
> Since I have explained the chip difference, do you still think it's
> better to merge this code into rt5033 mfd?

I think it's okay to group devices which are similar but not exactly
the same, if they can be.  The integration of this device into the
other looks trivial to my naive eyes.

A PMIC is a PMIC, main or sub.

> > > > Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> > > > ---
> > > >  drivers/mfd/Kconfig  |  12 +++++
> > > >  drivers/mfd/Makefile |   1 +
> > > >  drivers/mfd/rt5120.c | 125 +++++++++++++++++++++++++++++++++++++++++++++++++++
> > > >  3 files changed, 138 insertions(+)
> > > >  create mode 100644 drivers/mfd/rt5120.c

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
