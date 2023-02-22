Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 979C669F127
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 10:21:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231255AbjBVJU7 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 22 Feb 2023 04:20:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229935AbjBVJU6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 04:20:58 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A15A24120
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 01:20:57 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1pUlIo-0006oY-Lj; Wed, 22 Feb 2023 10:20:42 +0100
Message-ID: <ccd2961a86759197c0d101123a1132a92dfa0003.camel@pengutronix.de>
Subject: Re: [PATCH v3 3/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
 drivers to them
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Liu Ying <victor.liu@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
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
Date:   Wed, 22 Feb 2023 10:20:40 +0100
In-Reply-To: <e2adc02b-5e6a-3b78-cac2-e67ecc820231@denx.de>
References: <20230221152804.6061-1-marex@denx.de>
         <20230221152804.6061-3-marex@denx.de>
         <6181434024ae29aafe1da2088be0f48c377e303b.camel@pengutronix.de>
         <e2adc02b-5e6a-3b78-cac2-e67ecc820231@denx.de>
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

Am Dienstag, dem 21.02.2023 um 19:57 +0100 schrieb Marek Vasut:
> On 2/21/23 18:09, Lucas Stach wrote:
> 
> [...]
> 
> > > @@ -310,6 +312,13 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
> > >   
> > >   	dev_set_drvdata(dev, bc);
> > >   
> > > +	for_each_child_of_node(dev->of_node, np) {
> > > +		child = of_platform_device_create(np, NULL, dev);
> > > +		if (child)
> > > +			continue;
> > > +		dev_warn(dev, "failed to create device for %pOF\n", np);
> > > +	}
> > 
> > Any reason for not using devm_of_platform_populate() instead?
> 
> Yes, lack of awareness of that option.
> 
> Do I read it right that this gets rid of the whole loop implementation 
> here and replaces it with single function call ?

That's right. And it will also do the necessary
of_platform_device_destroy() to clean things up when the parent device
is removed.

Regards,
Lucas
