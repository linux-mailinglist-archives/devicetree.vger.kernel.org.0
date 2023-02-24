Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 672D06A1CC9
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 14:09:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230132AbjBXNJz convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 24 Feb 2023 08:09:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230199AbjBXNJz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 08:09:55 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35C7A16ADF
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 05:09:53 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1pVXpW-0001Gg-SA; Fri, 24 Feb 2023 14:09:42 +0100
Message-ID: <40830b7ba59797f890c365072d064b358622f59a.camel@pengutronix.de>
Subject: Re: [PATCH v4 3/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
 drivers to them
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Date:   Fri, 24 Feb 2023 14:09:41 +0100
In-Reply-To: <8477c32f-28e6-96f2-a4ec-b378b142d234@denx.de>
References: <20230223151043.41548-1-marex@denx.de>
         <20230223151043.41548-3-marex@denx.de>
         <a73850d6e3254d73adec31a723efc9816a633257.camel@pengutronix.de>
         <8477c32f-28e6-96f2-a4ec-b378b142d234@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Freitag, dem 24.02.2023 um 13:08 +0100 schrieb Marek Vasut:
> On 2/24/23 10:08, Lucas Stach wrote:
> 
> Hi,
> 
> > > diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
> > > index 399cb85105a18..77e7dc4eb8cff 100644
> > > --- a/drivers/soc/imx/imx8m-blk-ctrl.c
> > > +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> > > @@ -310,7 +310,7 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
> > >   
> > >   	dev_set_drvdata(dev, bc);
> > >   
> > > -	return 0;
> > > +	return devm_of_platform_populate(dev);
> > 
> > You need to handle the return value, not simply pass it through as the
> > return value of the probe function. When devm_of_platform_populate
> > fails you miss to clean up the genpd provider and detach from the power
> > domains.
> 
> Hmmm, but then I cannot use the devm_ variant, can I ?

Why not? If everything works okay the devm will just take care of
cleaning up the platform devices when the blk-ctrl is removed. If it
fails you just need to roll back the non-devm parts of the blk-ctrl
probe routine.

Regards,
Lucas
