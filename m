Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB39B51B8A3
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 09:23:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240202AbiEEH0v convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 5 May 2022 03:26:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235197AbiEEH0u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 03:26:50 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCDCE41325
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 00:23:10 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nmVpI-0006ji-TB; Thu, 05 May 2022 09:23:04 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v11 16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Date:   Thu, 05 May 2022 09:23:03 +0200
Message-ID: <2508329.Lt9SDvczpP@diego>
In-Reply-To: <20220505064131.GF4012@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de> <1911394.usQuhbGJ8B@diego> <20220505064131.GF4012@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Donnerstag, 5. Mai 2022, 08:41:31 CEST schrieb Sascha Hauer:
> On Thu, May 05, 2022 at 02:28:24AM +0200, Heiko Stübner wrote:
> > Am Freitag, 22. April 2022, 09:28:33 CEST schrieb Sascha Hauer:
> > > The VOP2 is the display output controller on the RK3568. Add the node
> > > for it to the dtsi file along with the required display-subsystem node
> > > and the iommu node.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > Acked-by: Rob Herring <robh@kernel.org>
> > > ---
> > > +	vop: vop@fe040000 {
> > > +		reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> > > +		reg-names = "regs", "gamma_lut";
> > 
> > reg-names does not seem to be part of the dt-binding.
> > Though now in the vop2-driver I see that the code uses that naming.
> > 
> > I guess we might want to just go the vop1-way by using numbered
> > platform-resources via a follow-up patch and drop the regnames here?
> 
> Or we could document the reg-names properties in a follow-up patch.
> Wouldn't that be better?

Also a possibility. Although that of course leads us into the naming
bike-shed ;-) ... i.e. for reg-names I'd do "vop" + "gamme-lut" (dash instead
of underscore) - instead of the ones used right now.

While using numbered resources would keep the commonality between
both vops


