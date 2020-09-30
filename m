Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4484827EF49
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:34:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgI3QeO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:34:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725355AbgI3QeO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:34:14 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 033B8C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 09:34:14 -0700 (PDT)
Received: from [2a0a:edc0:0:900:6245:cbff:fea0:1793] (helo=kresse.office.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kNf3Q-00052K-6s; Wed, 30 Sep 2020 18:34:09 +0200
Message-ID: <502fb976959b61472be351576ca8e6c880bea2bf.camel@pengutronix.de>
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Date:   Wed, 30 Sep 2020 18:34:07 +0200
In-Reply-To: <da60080c-8a2f-87f7-90cf-31bdfa338ef8@denx.de>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
         <20200930155006.535712-8-l.stach@pengutronix.de>
         <eecb12db-cf2f-c7bb-1da7-803f77e05e64@denx.de>
         <f86ecad9d46fa5ca2d92e314a9e3981ae4384da1.camel@pengutronix.de>
         <da60080c-8a2f-87f7-90cf-31bdfa338ef8@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:6245:cbff:fea0:1793
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL autolearn=no autolearn_force=no
        version=3.4.2
Subject: Re: [PATCH 07/11] soc: imx: gpcv2: add support for optional resets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mi, 2020-09-30 at 18:30 +0200, Marek Vasut wrote:
> On 9/30/20 6:23 PM, Lucas Stach wrote:
> > On Mi, 2020-09-30 at 18:15 +0200, Marek Vasut wrote:
> > > On 9/30/20 5:50 PM, Lucas Stach wrote:
> > > > Normally the reset for the devices inside the power domain is
> > > > triggered automatically from the PGC in the power-up sequencing,
> > > > however on i.MX8MM this doesn't work for the GPU power domains.
> > > 
> > > One has to wonder whether the VPU power domain has similar hardware bug
> > > on the MX8MM ?
> > 
> > Nope the VPUs have separate reset bits in the BLK_CTL. So after
> > powering up the VPUMIX domain one can assert/deassert reset to the
> > individual VPU cores.
> 
> Is there any documentation for the BLK_CTL on MX8MM ? I can't find any
> in the official RM.

I'm still waiting on some info from NXP about this. It is not
documented in the RM.

> And also, the GPUs need to use SRC reset, does the BLK_CTL reset do the
> same "degree" of reset to the VPU as the SRC reset does to the GPUs ?

At least that is what I'm assuming.

The fundamental issue with the GPU domain is that there is no BLK_CTL
in the GPUMIX domain and the resets are hooked up to the shared SRC
reset, instead of having GPU BLK_CTL level resets.

Regards,
Lucas

