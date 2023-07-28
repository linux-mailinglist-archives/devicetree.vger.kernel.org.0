Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 666FE767579
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 20:31:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231834AbjG1SbL convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 28 Jul 2023 14:31:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230344AbjG1SbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 14:31:10 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C952D4498
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 11:30:44 -0700 (PDT)
Received: from [185.230.175.137] (helo=phil.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1qPSDz-0000hp-L8; Fri, 28 Jul 2023 20:30:03 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Da Xue <da@lessconfused.com>,
        Christopher Obbard <chris.obbard@collabora.com>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>,
        kernel <kernel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable TYPE-C PD for ROC-RK3399-PC
Date:   Fri, 28 Jul 2023 20:30:02 +0200
Message-ID: <4659362.yKVeVyVuyW@phil>
In-Reply-To: <8ec1c4bb97ba0857275a540590fb302929436ba4.camel@collabora.com>
References: <20230719122123.3702588-1-jagan@amarulasolutions.com>
 <CACdvmAia49_YiKpVvT=yeLWF+YGm+2vFK3rdwRB9XOAH5mm=-w@mail.gmail.com>
 <8ec1c4bb97ba0857275a540590fb302929436ba4.camel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 25. Juli 2023, 10:02:21 CEST schrieb Christopher Obbard:
> Hi Da, Jagan,
> 
> On Tue, 2023-07-25 at 03:39 -0400, Da Xue wrote:
> > On Mon, Jul 24, 2023 at 9:55 AM Christopher Obbard
> > <chris.obbard@collabora.com> wrote:
> > > 
> > > On Wed, 2023-07-19 at 17:51 +0530, Jagan Teki wrote:
> > > > The power supply circuit in ROC-RK3399-PC is
> > > > 
> > > > Power Supply (or PPS) => FUSB => MP8859
> > > > 
> > > > VUBS pin of FUSB and IN pin of MP8859 is supplied via TYPEC_IN.
> > > > 
> > > > The MP8859 operated with 2.8V to 22V supply voltage and typical
> > > > applications this supply can be 12V.
> > > > 
> > > > This patch is trying to support the PD by changing the FUSB VBUS supply
> > > > to 12V and tune the I2C7 timings from downstream kernel.
> > > > 
> > > > Tested with PD3.0 PPS with supply voltages of 12V/3A and 20V/5A.
> > > 
> > > Hi Jagan,
> > > 
> > > This series works fine with a "dumb" (no PD negotiation) 5.1V Raspberry Pi PSU.
> > > 
> > > It also works fine with a Dell 45W USB-C Laptop Power Supply (model AA45NM170) which provides 5V@3A,9V@3A,15V@3A,20V@2.25A, where Linux master fails and just tells the USB-PD PSU to power-off.
> > 
> > I think this depends on the recent Rockchip TCPM changes. FUSB302 has
> > been a pain in the USB or else this platform would have launched a lot
> > longer ago.
> 
> Sorry, I was testing this patch on top of next-20230724 which includes https://patchwork.kernel.org/project/linux-rockchip/list/?series=757752:
> 
>  8be558dcffe69b078b34b1fa93b82acaf4ce4957 ("usb: typec: tcpm: add get max power support")
>  1e35f074399dece73d5df11847d4a0d7a6f49434 ("usb: typec: tcpm: fix cc role at port reset")
> 
> Can you check if I am missing any other patches ?

so I guess the question is, are there any new clues and/or does this patch
make the situaton better or worse for the roc-rk3399-pc board as it stands
now.

Thanks
Heiko


