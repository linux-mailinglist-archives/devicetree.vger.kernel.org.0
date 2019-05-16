Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C135520B79
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 17:48:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727121AbfEPPsD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 11:48:03 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:48571 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727037AbfEPPsD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 11:48:03 -0400
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hRIbt-0004pd-6S; Thu, 16 May 2019 17:47:57 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hRIbs-0003qp-Dg; Thu, 16 May 2019 17:47:56 +0200
Date:   Thu, 16 May 2019 17:47:56 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, Stefan.Nickl@kontron.com,
        Gilles.Buloz@kontron.com, Michael.Brunner@kontron.com,
        thomas.schaefer@kontron.com, frieder.schrempf@kontron.de,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 11/17] ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC
 SPI1 interface
Message-ID: <20190516154756.bz5cl2wqc3wuhvey@pengutronix.de>
References: <20190509155834.22838-1-m.felsch@pengutronix.de>
 <20190509155834.22838-12-m.felsch@pengutronix.de>
 <CAOMZO5CqbA6VaGhjgTnmmO=VJw1rUz=oReBqJ3HFHmL78vva2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMZO5CqbA6VaGhjgTnmmO=VJw1rUz=oReBqJ3HFHmL78vva2w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:47:23 up 117 days, 20:29, 92 users,  load average: 0.08, 0.06,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Fabio,

On 19-05-16 08:43, Fabio Estevam wrote:
> On Thu, May 9, 2019 at 12:59 PM Marco Felsch <m.felsch@pengutronix.de> wrote:
> 
> > +/* SPI1 */
> > +&ecspi2 {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pinctrl_ecspi2>;
> > +       fsl,spi-num-chipselects = <2>;
> > +       cs-gpios = <&gpio2 26 0>, <&gpio2 27 0>;
> 
> Same comment as in the other patch.

Thanks for covering that.

Regards,
  Marco


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
