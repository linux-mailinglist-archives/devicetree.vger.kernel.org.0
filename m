Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D94A5605A4D
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 10:53:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbiJTIxv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 04:53:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230190AbiJTIxf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 04:53:35 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83909194F9A
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 01:53:31 -0700 (PDT)
Received: from p57b7734d.dip0.t-ipconnect.de ([87.183.115.77] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1olRIp-00053R-Vg; Thu, 20 Oct 2022 10:53:24 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Johan Jonker <jbx6244@gmail.com>, ilmich <ardutu@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Alex Bee <knaerzche@gmail.com>,
        Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
Date:   Thu, 20 Oct 2022 10:53:23 +0200
Message-ID: <9009700.CDJkKcVGEf@phil>
In-Reply-To: <CAK1Nf77W=_7xnDfEjKr=N9Ot0WSgzchEJqJ5_PXOMcvfiQKd8Q@mail.gmail.com>
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net> <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com> <CAK1Nf77W=_7xnDfEjKr=N9Ot0WSgzchEJqJ5_PXOMcvfiQKd8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am Donnerstag, 20. Oktober 2022, 09:10:44 CEST schrieb ilmich:
> > Hi,
> 
> Hi Johan,
> 
> >
> > Compatible strings must SoC orientated.
> >
> > Something like:
> > compatible = "rockchip,rk3228-crypto", "rockchip,rk3288-crypto";
> >
> > This string must be add to YAML document:
> > https://lore.kernel.org/linux-rockchip/20220927075511.3147847-25-clabbe@baylibre.com/
> >
> > The status of that serie is unknown to me.
> > Not sure by who or when that is going to be merged.
> >
> > Johan
> 
> thanks for the feedback, this is my first kernel patch.

no worries, we'll get you through it :-)

> Maybe at this point it is worth trying to combine the two jobs !?
> Or do I still have to modify my patch asking only to add the string in
> the yaml !?

actually you want to go the following route:

(1) pick up
- https://lore.kernel.org/all/20220927075511.3147847-25-clabbe@baylibre.com/
- https://lore.kernel.org/all/20220927075511.3147847-26-clabbe@baylibre.com/
as a base to work on

(2) create a patch to add your compatible.
I _think_ after that, the compatible block should looks
something like:

  compatible:
    oneOf:
      - const: rockchip,rk3288-crypto
      - const: rockchip,rk3328-crypto
      - const: rockchip,rk3399-crypto
      - items:
          - const: rockchip,rk3228-crypto
          - const: rockchip,rk3288-crypto

to handle the new dual element compatible.
	make dt_binding_check
should tell you about a wrong format.

(3) modify your dts patch to use the two compatibles
(4) export patches by
	git format-patch -2 --cover-letter
and mention in the cover-letter the dependency on the
yaml conversion.


Heiko


