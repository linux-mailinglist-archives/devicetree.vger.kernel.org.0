Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A278051D3CC
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 10:54:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1390287AbiEFI6P convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 6 May 2022 04:58:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390282AbiEFI6N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 04:58:13 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E27245DA09
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 01:54:28 -0700 (PDT)
Received: from p508fcb34.dip0.t-ipconnect.de ([80.143.203.52] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nmtjD-0005t9-LO; Fri, 06 May 2022 10:54:23 +0200
From:   Heiko Stuebner <heiko@sntech.de>
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
Date:   Fri, 06 May 2022 10:54:18 +0200
Message-ID: <8099476.NyiUUSuA9g@phil>
In-Reply-To: <20220506071028.GS4012@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de> <2508329.Lt9SDvczpP@diego> <20220506071028.GS4012@pengutronix.de>
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

Am Freitag, 6. Mai 2022, 09:10:28 CEST schrieb Sascha Hauer:
> On Thu, May 05, 2022 at 09:23:03AM +0200, Heiko Stübner wrote:
> > Am Donnerstag, 5. Mai 2022, 08:41:31 CEST schrieb Sascha Hauer:
> > > On Thu, May 05, 2022 at 02:28:24AM +0200, Heiko Stübner wrote:
> > > > Am Freitag, 22. April 2022, 09:28:33 CEST schrieb Sascha Hauer:
> > > > > The VOP2 is the display output controller on the RK3568. Add the node
> > > > > for it to the dtsi file along with the required display-subsystem node
> > > > > and the iommu node.
> > > > > 
> > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > Acked-by: Rob Herring <robh@kernel.org>
> > > > > ---
> > > > > +	vop: vop@fe040000 {
> > > > > +		reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> > > > > +		reg-names = "regs", "gamma_lut";
> > > > 
> > > > reg-names does not seem to be part of the dt-binding.
> > > > Though now in the vop2-driver I see that the code uses that naming.
> > > > 
> > > > I guess we might want to just go the vop1-way by using numbered
> > > > platform-resources via a follow-up patch and drop the regnames here?
> > > 
> > > Or we could document the reg-names properties in a follow-up patch.
> > > Wouldn't that be better?
> > 
> > Also a possibility. Although that of course leads us into the naming
> > bike-shed ;-) ... i.e. for reg-names I'd do "vop" + "gamme-lut" (dash instead
> > of underscore) - instead of the ones used right now.
> 
> I also like dashes better than underscores and "vop" describes it better
> than the generic "reg" name, so at least the two of us don't need to
> dive deeper into the naming bike-shed ;)

:-D ... one problem solved already

> > While using numbered resources would keep the commonality between
> > both vops
> 
> I like the named resources better, but I'll leave it up to you. You
> decide, I'll create fixup patches in either direction.

ok, then let's go with the named-resources. As we'll need an Ack from
DT-people, we should probably expedite this.

Ideally I guess, do the dt-binding fixup + resend the fixed dt-node patches
with it. From the original series those dt-nodes + the hdmi rate stuff
is the only thing missing and the rates can be a separate thing.

Heiko


