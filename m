Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C52B63F49AE
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 13:23:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235855AbhHWLYY convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 23 Aug 2021 07:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235405AbhHWLYY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 07:24:24 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D632EC061575
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 04:23:41 -0700 (PDT)
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1mI83C-0006WW-6T; Mon, 23 Aug 2021 13:23:34 +0200
Received: from pza by lupine with local (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1mI83B-0006gU-MT; Mon, 23 Aug 2021 13:23:33 +0200
Message-ID: <197a021684ea01ba50b3ab86f71525878042a8ee.camel@pengutronix.de>
Subject: Re: [PATCH v2 9/9] clk: imx: Add the pcc reset controller support
 on imx8ulp
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Jacky Bai <ping.bai@nxp.com>, shawnguo@kernel.org,
        robh+dt@kernel.org, abel.vesa@nxp.com, sboyd@kernel.org,
        s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Date:   Mon, 23 Aug 2021 13:23:33 +0200
In-Reply-To: <20210810062820.1062884-10-ping.bai@nxp.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
         <20210810062820.1062884-10-ping.bai@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jacky,

On Tue, 2021-08-10 at 14:28 +0800, Jacky Bai wrote:
> On i.MX8ULP, for some of the PCCs, it has a peripheral SW RST bit
> resides in the same registers as the clock controller. So add this
> SW RST controller support alongs with the pcc clock initialization.
> 
> the reset and clock shared the same register, to avoid  accessing
> the same register by reset control and clock control concurrently,
> locking is necessary, so reuse the imx_ccm_lock spinlock to simplify
> the code.
> 
> Suggested-by: Liu Ying <victor.liu@nxp.com>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>   v2 changes:
>     - add 'Suggested-by' as suggested by Victor Liu
> ---
>  drivers/clk/imx/Kconfig              |   1 +
>  drivers/clk/imx/clk-composite-7ulp.c |  10 +++
>  drivers/clk/imx/clk-imx8ulp.c        | 115 ++++++++++++++++++++++++++-
>  3 files changed, 123 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig
> index b81d6437ed95..0d1e3a6ac32a 100644
> --- a/drivers/clk/imx/Kconfig
> +++ b/drivers/clk/imx/Kconfig
> @@ -102,5 +102,6 @@ config CLK_IMX8QXP
>  config CLK_IMX8ULP
>  	tristate "IMX8ULP CCM Clock Driver"
>  	depends on ARCH_MXC || COMPILE_TEST
> +	select RESET_CONTROLLER

This shouldn't be required anymore, devm_reset_controller_register() has
a stub since commit 48a74b1147f7 ("reset: Add compile-test stubs").

[...]
> diff --git a/drivers/clk/imx/clk-imx8ulp.c b/drivers/clk/imx/clk-imx8ulp.c
> index 6aad04114658..ea596cd6855a 100644
> --- a/drivers/clk/imx/clk-imx8ulp.c
> +++ b/drivers/clk/imx/clk-imx8ulp.c
> @@ -9,6 +9,7 @@
>  #include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
>  #include <linux/slab.h>
>  
>  #include "clk.h"
> @@ -48,6 +49,98 @@ static const char * const nic_per_divplat[] = { "nic_per_divplat" };
>  static const char * const lpav_axi_div[] = { "lpav_axi_div" };
>  static const char * const lpav_bus_div[] = { "lpav_bus_div" };
>  
> +struct pcc_reset_dev {
> +	void __iomem *base;
> +	struct reset_controller_dev rcdev;
> +	const u32 *resets;
> +	spinlock_t *lock;

I'd add a comment to this lock, stating that it is set to imx_ccm_lock
and protects access to registers shared with clock control.

With these addressed,

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp
