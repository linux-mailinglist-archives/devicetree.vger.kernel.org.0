Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F9316B0ECB
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 17:32:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229691AbjCHQb6 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 8 Mar 2023 11:31:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbjCHQbz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 11:31:55 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43A8E10421
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 08:31:52 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pZwhM-0000cX-4d; Wed, 08 Mar 2023 17:31:28 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Vasily Khoruzhick <anarsoul@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
        Chris Morgan <macromorgan@hotmail.com>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Brian Norris <briannorris@chromium.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Chukun Pan <amadeus@jmu.edu.cn>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Tianling Shen <cnsztl@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Date:   Wed, 08 Mar 2023 17:31:36 +0100
Message-ID: <3188745.AJdgDx1Vlc@diego>
In-Reply-To: <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
References: <20230308063240.107178-1-anarsoul@gmail.com>
 <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
 <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 8. März 2023, 17:09:20 CET schrieb Vasily Khoruzhick:
> On Wed, Mar 8, 2023 at 3:31 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > index 35f74eda30ae..0813ad22dc76 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -201,6 +201,11 @@ properties:
> > >                - friendlyarm,nanopi-r4s-enterprise
> > >            - const: rockchip,rk3399
> > >
> > > +      - description: FriendlyElec NanoPi R5S board
> > > +
> >
> > Does not look like ordered alphabetically. Are you sure this is correct
> > place for it?
> 
> Hmm, strictly speaking, "FriendlyElec NanoPi R5S board" should go in
> between of "FriendlyElec NanoPi R2S" and "FriendlyElec NanoPi4 series
> boards" if we want it in alphabetical order, not after "FriendlyElec
> NanoPi4 series boards" like in this patch. But it doesn't look nice
> (because R5S will go before R4S).
> 
> There is already similar ordering (alphabetical/chronological for
> model) for Radxa Rock Pi - "Radxa ROCK Pi S", "Radxa Rock2 Square",
> "Radxa ROCK3 Model A", "Radxa ROCK 5 Model A".
> 
> However if you want me to sort it strictly alphabetically, I can send a v2.

TL;DR: I think the entry is "just right" where it currently is :-)

- FriendlyElec NanoPi R2S
  -> would become "FriendlyElec NanoPi2 series boards", _if_ there
      will ever be some others
- FriendlyElec NanoPi R4S is included in the
	"FriendlyElec NanoPi4 series boards"

and similarly the "FriendlyElec NanoPi R5S board" would become
	"FriendlyElec NanoPi5 boards"
once they release more variants.
[Though we could get rid of the "board" in the current entry]

And judging by the amound of devices Pine64 did on the rk3568-base,
I guess it's fairly likely that FriendlyArm will release more in the future
as well, so the current position seems fitting.


Heiko



