Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36F89605EC7
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 13:24:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231325AbiJTLYi convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 20 Oct 2022 07:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230402AbiJTLYf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 07:24:35 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DF2DBC12
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 04:24:27 -0700 (PDT)
Received: from p57b7734d.dip0.t-ipconnect.de ([87.183.115.77] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1olTev-00062S-61; Thu, 20 Oct 2022 13:24:21 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Michele =?ISO-8859-1?Q?Zuccal=E0?= <ardutu@gmail.com>
Cc:     Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Alex Bee <knaerzche@gmail.com>,
        Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
Date:   Thu, 20 Oct 2022 13:24:20 +0200
Message-ID: <5768534.MhkbZ0Pkbq@phil>
In-Reply-To: <CAK1Nf75B-4wzM3pafaOVHCD9WugT3YPjphbEq25-WLRGh3Jhbw@mail.gmail.com>
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net> <9009700.CDJkKcVGEf@phil> <CAK1Nf75B-4wzM3pafaOVHCD9WugT3YPjphbEq25-WLRGh3Jhbw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Michele,

Am Donnerstag, 20. Oktober 2022, 13:13:10 CEST schrieb Michele Zuccalà:
> > no worries, we'll get you through it :-)
> >
> 
> thank you
> 
> >
> > actually you want to go the following route:
> >
> > (1) pick up
> > - https://lore.kernel.org/all/20220927075511.3147847-25-clabbe@baylibre.com/
> > - https://lore.kernel.org/all/20220927075511.3147847-26-clabbe@baylibre.com/
> > as a base to work on
> >
> > (2) create a patch to add your compatible.
> > I _think_ after that, the compatible block should looks
> > something like:
> >
> >   compatible:
> >     oneOf:
> >       - const: rockchip,rk3288-crypto
> >       - const: rockchip,rk3328-crypto
> >       - const: rockchip,rk3399-crypto
> >       - items:
> >           - const: rockchip,rk3228-crypto
> >           - const: rockchip,rk3288-crypto
> >
> > to handle the new dual element compatible.
> >         make dt_binding_check
> > should tell you about a wrong format.
> >
> > (3) modify your dts patch to use the two compatibles
> > (4) export patches by
> >         git format-patch -2 --cover-letter
> > and mention in the cover-letter the dependency on the
> > yaml conversion.
> 
> very clear. But excuse the stupid question, this way it becomes a new patchset
> and not the v2 of this patch, right?! Will this patch be automatically
> ignored ?!

The new patchset still should become v2, as it still addresses
your overall goal of adding crypto support for the rk3228.


Heiko


