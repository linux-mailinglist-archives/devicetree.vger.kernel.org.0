Return-Path: <devicetree+bounces-373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 852687A16A6
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:57:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A958282699
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 06:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD4346AD;
	Fri, 15 Sep 2023 06:57:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447D81379
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 06:57:45 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEAAA2723
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:57:11 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C0D3D1C0006;
	Fri, 15 Sep 2023 06:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1694761030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L2sqXGX4RhAKmchQsyxvig/E2PRZhb7DReGQK6xBbNU=;
	b=k7twtjv6n8Xxz02Bp/gL0ujKol4nOUFVLl0MvEaDXFChS/iA1yTepQVk9WwaOLNPw2n1/r
	yQSWeM/0zUiQ2/SpYtds6CKKXiyeuqwbYeXgY1A1LrNUCkARLCP23wzd+6WOA/mGTS+oDK
	8hfeGIrlSkbOuaOZWxiG2mF4EawayP/3IFK5MWfHGydjnYO7rmUX2igpzxeUgMElu6FH6y
	+BmERYzpRPOYxObcWeuOnycDnkpH25XQqpwYIYy86+Q8aJ7EZzPpMH9KzwZ0q+K0INeATK
	KtnNflcpBDmb6qWfH6HrTtTqGgOK0d7XDDUjW48AMAef9dA4F6mbxp9u1PMuJA==
Date: Fri, 15 Sep 2023 08:57:06 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Sandor Yu <sandor.yu@nxp.com>
Cc: Lucas Stach <l.stach@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, dl-linux-imx
 <linux-imx@nxp.com>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "patchwork-lst@pengutronix.de"
 <patchwork-lst@pengutronix.de>, Richard Leitner
 <richard.leitner@skidata.com>
Subject: Re: [EXT] Re: [PATCH v3 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20230915085706.2452129e@booty>
In-Reply-To: <PAXPR04MB9448947986184612E67E3E2DF4F6A@PAXPR04MB9448.eurprd04.prod.outlook.com>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
	<20230906184211.1857585-2-l.stach@pengutronix.de>
	<20230914231610.2c339f7e@booty>
	<PAXPR04MB9448947986184612E67E3E2DF4F6A@PAXPR04MB9448.eurprd04.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello Sandor, Lucas,

On Fri, 15 Sep 2023 01:49:42 +0000
Sandor Yu <sandor.yu@nxp.com> wrote:

> Hi Luca, 
> 
> > 
> > Hi Lucas,
> > 
> > [+Cc: Sandor]
> > 
> > On Wed,  6 Sep 2023 20:42:11 +0200
> > Lucas Stach <l.stach@pengutronix.de> wrote:
> >   
> > > This adds the driver for the Samsung HDMI PHY found on the i.MX8MP
> > > SoC. Based on downstream implementation from Sandor Yu
> > > <Sandor.yu@nxp.com>.
> > >
> > > Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)  
> > 
> > Also for v3:
> > [On custom board based on MSC SM2S-IMX8PLUS SMARC module]
> > Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> > 
> > I have a few notes however, see below.
> >   
> > > +#define PHY_REG_14           0x38
> > > +#define  REG14_TOL_MASK              GENMASK(7, 4)
> > > +#define  REG14_RP_CODE_MASK  GENMASK(2, 1)  
> > 
> > According to the latest reference manual currently available on the NXP
> > website (Rev. 1, 06/2021), this should be GENMASK(3, 1). This is somewhat
> > nitpicking as the only possible value documented is 2. But let's continue...
> >   
> I agree, according the RM it should be GENMASK(3, 1).
> 
> > > +#define PHY_REG_33           0x84
> > > +#define  REG33_MODE_SET_DONE BIT(7)
> > > +#define  REG33_FIX_DA                BIT(1)  
> > 
> > Here the reference manual is very different:
> > 
> > MODE_SET_DONE BIT(4)
> > TX_INV2       BIT(3)
> > TX_INV1       BIT(2)
> > TX_INV0       BIT(1)
> > MON_RXD       BIT(0)
> > bits 7-5 are reserved
> > 
> > ...which is strange: in the code you are always writing 0 in bit 4, which
> > according to the docs means MODE_SET_DONE is always "Assert forced
> > global reset". Thus I guess your definitions come from the downstream driver
> > which, as it sadly happens, is more authoritative than the docs. :-/
> > 
> > Sandor, can you confirm this, or provide any clarifications?  
> 
> There is a doc issue on the i.MX8MP latest RM, actually the fields for REG33 should be:
> REG33 fields:
> --------------------------------------------------------------------------------
> |    Field	   |       Description
> --------------------------------------------------------------------------------
> |     7         | 0 - Assert forced global reset
> |MODE_SET_DONE | 1 - Release forced global reset             
> --------------------------------------------------------------------------------
> |     6        | 0 - There are not any change in 20bit data from TXD2 port     
> |TX_INV2	       | 1 Invert polarity of 10bit data of 20bit data from TXD2 port
> --------------------------------------------------------------------------------
> |     5        | 0 - There are not any change in 20bit data from TXD1 port     
> |TX_INV1       | 1 - Invert polarity of 10bit data of 20bit data from TXD1 port
> --------------------------------------------------------------------------------
> |     4        | 0 - There are not any change in 20bit data from TXD0 port      
> |TX_INV0       | 1 - Invert polarity of 10bit data of 20bit data from TXD0 port 
> --------------------------------------------------------------------------------
> |    3         | 0 : TESTOUT[0] - BIST_ON                                    
> |MON_RXD     | TESTOUT[1] - BIST_ERROR                                     
> |              | TESTOUT[2] - DES_CLK_SEL[0]                                 
> |              | TESTOUT[3] - DES_CLK_SEL[1]                                 
> |              | TESTOUT[4] - TX_CLK_SEL[0]                                  
> |              | TESTOUT[5] - TX_CLK_SEL[1]                                  
> |              | TESTOUT[6] - TX_CLK_SEL[2]                                  
> |              | TESTOUT[7] - TX_CLK_SEL[3]                                  
> |              | TESTOUT[8] - PLL_COARSE_LOCK_DONE                           
> |              | TESTOUT[9] - PLL_FINE_LOCK_DONE                             
> |              | TESTOUT[10] - Divided by 10 clock (source clock : PIXEL_CLK)
> |              | TESTOUT[11] - Divided by 10 clock (source clock : TMDS_CLK) 
> |              | 1 : TESTOUT[0:9] - 10bit of RXDATA                          
> |              | TESTOUT[10] - Divided by 10 clock (source clock : PIXEL_CLK)
> |              | TESTOUT[11] - Divided by 10 clock (source clock : TMDS_CLK) 
> --------------------------------------------------------------------------------
> |    2         |
> |FIX_DB        | Disable de-skew function 1 - Select fixed phase 2
> --------------------------------------------------------------------------------
> |    1         |
> |FIX_DA        | Disable de-skew function 1 - Select fixed phase 1
> --------------------------------------------------------------------------------
> |    0         | 0 : There are not any change in 20bit data from TESTIN port    
> |ALTER         | 1: Invert polarity of 10bit data of 20bit data from TESTIN port
> --------------------------------------------------------------------------------
> 
> The issue will be fixed in the next i.MX8MP RM release, sorry for the inconvenience.

Thanks for the prompt clarification!

I'm not sure whether this should deserve a comment such as "/*
Reference manual Rev. 1, 06/2021 has incorrect documentation of this
register */". It depends on the time the fixed RM will take before it's
public, so up to you Lucas.

Bottom line, I think only the PHY_REG_14 fix is needed to this patch.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

