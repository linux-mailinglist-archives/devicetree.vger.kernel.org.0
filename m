Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8B076B8B5B
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 07:39:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbjCNGjo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 02:39:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230029AbjCNGjn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 02:39:43 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79CE1B551
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 23:39:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5DE0EB8136B
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 06:39:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4982FC433D2;
        Tue, 14 Mar 2023 06:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678775980;
        bh=PT9JKOrqdLPGqzjz32eKD65LOXvl+LUMqRmqeBPZ5zE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GVjjlsSbVxaBcwPSZhLOCzS4PAKRTP1WrkYx8LdnTD5ZHVZxhNoaabmslGrdLZkF8
         tGfzhjy5Q1gHOhp/L6LKBo+88OrnwvoJmQSCG5aE3EXzPHFl0kTDuqr3lcTkOnmcF3
         dSW8SpQoRChn+KXFiFMwT+F4Z+XJtNns6gkfWrRGMEVARsjrx+DRfSx/k/lx0CUkuI
         8XvywjSqs1CAy77EQusthka9yp8BCVaUZMlDVUX244UkWRcIYRTO6fJmXUen+FHKU2
         Gg3ar/fsLbUD39pw25+f2afYQNye54cf0cV68ezjJcrFxf6kMCDZoBPr76zL4BS2TX
         fH+iMUo0XTbvA==
Date:   Tue, 14 Mar 2023 14:39:32 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        devicetree@vger.kernel.org, Richard Zhu <hongxing.zhu@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v11 1/2] arm64: dts: imx8mm-evkb: add support for
 i.MX8MM-EVKB
Message-ID: <20230314063932.GR143566@dragon>
References: <20230130172553.2738182-1-johannes.schneider@leica-geosystems.com>
 <20230130172553.2738182-2-johannes.schneider@leica-geosystems.com>
 <20230307031426.GI143566@dragon>
 <20230307085747.mrqeoi4mkggby73o@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230307085747.mrqeoi4mkggby73o@pengutronix.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 07, 2023 at 09:57:47AM +0100, Marco Felsch wrote:
> Hi Shawn,
> 
> On 23-03-07, Shawn Guo wrote:
> > On Mon, Jan 30, 2023 at 06:25:52PM +0100, Johannes Schneider wrote:
> > > Add devicetree for the EVKB, which comes with LPDDR4 and a different
> > > PMIC.
> > > 
> > > The regulator min/max values are taken from the evk's schematic:
> > > 8MMINILPD4-CPU  SPF-31399_C2.pdf
> > > 
> > > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> > 
> > The patch doesn't compile at all (see below), so I took a closer look
> > and decided to drop the series.
> > 
> > > ---
> > >  arch/arm64/boot/dts/freescale/Makefile        |   1 +
> > >  arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 134 ++++++++++++++++++
> > >  2 files changed, 135 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > > index 3ea9edc87909..3bccc4d10928 100644
> > > --- a/arch/arm64/boot/dts/freescale/Makefile
> > > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > > @@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
> > > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-evkb.dtb
> > 
> > I prefer to name it imx8mm-evk-revb.dtb or imx8mm-evk-b.dtb.
> 
> Unfortunately it's not revision B, it is evkb. The 'first' evk has
> plenty revisions. I think the most recent for the imx8mm-evk is C5. For
> the imx8mm-evkb the most recent revision is A4. Even this is not 100
> percent correct since the EVK consist of a SoM and a baseboard. The
> baseboard isn't changed for the EVKB but the SoM. The new SoM schematics
> name the new SoM 8MMINILPD4-CPU2. But in the end you can't buy it
> separately:
> - https://www.nxp.com/design/development-boards/i-mx-evaluation-and-development-boards/evaluation-kit-for-the-i-mx-8m-mini-applications-processor:8MMINILPD4-EVK

Ok, thanks for the information, Marco!

Shawn
