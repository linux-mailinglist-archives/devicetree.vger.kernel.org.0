Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A17C3F73C6
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 12:54:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238324AbhHYKzN convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 25 Aug 2021 06:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231697AbhHYKzN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 06:55:13 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BA51C061757
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 03:54:27 -0700 (PDT)
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1mIqY1-0008Pr-PV; Wed, 25 Aug 2021 12:54:21 +0200
Received: from pza by lupine with local (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1mIqY1-0002Ry-75; Wed, 25 Aug 2021 12:54:21 +0200
Message-ID: <eff966536074201ff9eed6ee09db842711910d49.camel@pengutronix.de>
Subject: Re: [PATCH v2 9/9] clk: imx: Add the pcc reset controller support
 on imx8ulp
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Jacky Bai <ping.bai@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Abel Vesa <abel.vesa@nxp.com>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Date:   Wed, 25 Aug 2021 12:54:21 +0200
In-Reply-To: <DBBPR04MB7930A3180885701E13D34F1487C49@DBBPR04MB7930.eurprd04.prod.outlook.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
         <20210810062820.1062884-10-ping.bai@nxp.com>
         <197a021684ea01ba50b3ab86f71525878042a8ee.camel@pengutronix.de>
         <DBBPR04MB7930A3180885701E13D34F1487C49@DBBPR04MB7930.eurprd04.prod.outlook.com>
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

On Mon, 2021-08-23 at 23:58 +0000, Jacky Bai wrote:
[...]
> > > diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig index
> > > b81d6437ed95..0d1e3a6ac32a 100644
> > > --- a/drivers/clk/imx/Kconfig
> > > +++ b/drivers/clk/imx/Kconfig
> > > @@ -102,5 +102,6 @@ config CLK_IMX8QXP  config CLK_IMX8ULP
> > >  	tristate "IMX8ULP CCM Clock Driver"
> > >  	depends on ARCH_MXC || COMPILE_TEST
> > > +	select RESET_CONTROLLER
> > 
> > This shouldn't be required anymore, devm_reset_controller_register() has a
> > stub since commit 48a74b1147f7 ("reset: Add compile-test stubs").
> 
> So we don't need to select 'RESET_CONTROLLER' explicitly, right?

Right.

regards
Philipp
