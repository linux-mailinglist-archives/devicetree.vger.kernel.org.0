Return-Path: <devicetree+bounces-319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEF27A0FA8
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 23:16:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFC381C208E4
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 21:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DABE926E29;
	Thu, 14 Sep 2023 21:16:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F190210FE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 21:16:17 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 676AD26BB
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 14:16:17 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id B7B9F20003;
	Thu, 14 Sep 2023 21:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1694726175;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J2uByTSc6ef2wK15Maeotg/rSPIQ8wdVeYHF0MmEwJ8=;
	b=ER65GMMSKPyr6+QvCoJU06vqzBVSGGkY0KbyPJ/2OanGNONbd+JcMb3bpegvJY2Qy/7G8w
	w/jWn/U4WB9q3++/Hsb4hUmiULOZTsWGNC1RcPQvxTyl5AtkmD58/SOxhrFrxiZqYPstU6
	mLUqYYJnOdCEFEJhuu3wOg98GftsQzOKHZrQT+hmMTcdveRV2q6DAW9rbm0YWKEZ4bcN0E
	/SCJQFNraGGeZ5Uu+ik+F5a0NVwol3T1eeuH+NK39v8trS2M78Slntk5cU1JFQSCHUw7Xq
	60TEcebW9ilV30MsUIRP6MwhpV9wdxk3Yue7bHRYuwaLzC2ELAyYuMICYUn/Ow==
Date: Thu, 14 Sep 2023 23:16:10 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio
 Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de, Richard
 Leitner <richard.leitner@skidata.com>, Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v3 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20230914231610.2c339f7e@booty>
In-Reply-To: <20230906184211.1857585-2-l.stach@pengutronix.de>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
	<20230906184211.1857585-2-l.stach@pengutronix.de>
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

Hi Lucas,

[+Cc: Sandor]

On Wed,  6 Sep 2023 20:42:11 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)

Also for v3:
[On custom board based on MSC SM2S-IMX8PLUS SMARC module]
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

I have a few notes however, see below.

> +#define PHY_REG_14		0x38
> +#define  REG14_TOL_MASK		GENMASK(7, 4)
> +#define  REG14_RP_CODE_MASK	GENMASK(2, 1)

According to the latest reference manual currently available on the NXP
website (Rev. 1, 06/2021), this should be GENMASK(3, 1). This is
somewhat nitpicking as the only possible value documented is 2. But
let's continue...

> +#define PHY_REG_33		0x84
> +#define  REG33_MODE_SET_DONE	BIT(7)
> +#define  REG33_FIX_DA		BIT(1)

Here the reference manual is very different:

MODE_SET_DONE BIT(4)
TX_INV2       BIT(3)
TX_INV1       BIT(2)
TX_INV0       BIT(1)
MON_RXD       BIT(0)
bits 7-5 are reserved

...which is strange: in the code you are always writing 0 in bit 4,
which according to the docs means MODE_SET_DONE is always "Assert
forced global reset". Thus I guess your definitions come from the
downstream driver which, as it sadly happens, is more authoritative
than the docs. :-/

Sandor, can you confirm this, or provide any clarifications?

Otherwise LGTM.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

