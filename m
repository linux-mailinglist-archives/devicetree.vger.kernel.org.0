Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B3DA5AE49A
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 11:44:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232797AbiIFJoJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 05:44:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239264AbiIFJnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 05:43:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D5EB2C13F
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 02:43:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 02CE561485
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 09:43:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37CD9C433D6;
        Tue,  6 Sep 2022 09:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662457431;
        bh=Fc43B/sx7xTC763PNrKTrSJv+k/Bw/O4ymkVuR4bfgo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=k/Hr4f3pgw8x73OSSUT2UfbnH4HVsMSUUYpBui64vabx1qYIahTfm1XC/HaJIxkZv
         pITKfiPrfaD7h4VR5HtoXhVwvwlWyV3uolEySfHINzmoZoCca40UGxrhkp+qAcquby
         FMvQRjCqdLbFvemrGeRQUv9NSPSQLC07XCz5C5u0yfXPgM6Kr3vKNoq792FLytQVkZ
         OfNbkce/mZm0wWyxnEoClxii9dEeZT7T42DCZG/lgm2GHEgM0V3mYtlo/RsJQMEXcD
         laHYQ2Lqpof6iMjVqKUxK7SVYHwE+UiG/sGDJCx/9VnlRji0fPBngllfoOkhlv9vtz
         FATuy1fW7qrCg==
Date:   Tue, 6 Sep 2022 17:43:43 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Jun Li <jun.li@nxp.com>
Cc:     Marco Felsch <m.felsch@pengutronix.de>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "marex@denx.de" <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        "Markus.Niebel@ew.tq-group.com" <Markus.Niebel@ew.tq-group.com>,
        "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>,
        "paul.elder@ideasonboard.com" <paul.elder@ideasonboard.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "aford173@gmail.com" <aford173@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mp: correct usb clocks
Message-ID: <20220906094343.GO1728671@dragon>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
 <20220824091044.msaa4lymgyrmektl@pengutronix.de>
 <PA4PR04MB964059A132A12DE73801C86189739@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <PA4PR04MB9640A5B008D6D97C5F5AB7F2897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PA4PR04MB9640A5B008D6D97C5F5AB7F2897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Jun,

On Tue, Sep 06, 2022 at 07:19:57AM +0000, Jun Li wrote:
> Hi Shawn,
> 
> > -----Original Message-----
> > From: Jun Li <jun.li@nxp.com>
> > Sent: Wednesday, August 24, 2022 6:24 PM
> > To: Marco Felsch <m.felsch@pengutronix.de>
> > Cc: shawnguo@kernel.org; robh+dt@kernel.org;
> > krzysztof.kozlowski+dt@linaro.org; s.hauer@pengutronix.de;
> > kernel@pengutronix.de; festevam@gmail.com; marex@denx.de;
> > devicetree@vger.kernel.org; Peng Fan <peng.fan@nxp.com>;
> > Markus.Niebel@ew.tq-group.com; laurent.pinchart@ideasonboard.com;
> > paul.elder@ideasonboard.com; dl-linux-imx <linux-imx@nxp.com>;
> > aford173@gmail.com; linux-arm-kernel@lists.infradead.org;
> > l.stach@pengutronix.de
> > Subject: RE: [PATCH] arm64: dts: imx8mp: correct usb clocks
> > 
> > 
> > 
> > > -----Original Message-----
> > > From: Marco Felsch <m.felsch@pengutronix.de>
> > > Sent: Wednesday, August 24, 2022 5:11 PM
> > > To: Jun Li <jun.li@nxp.com>
> > > Cc: shawnguo@kernel.org; robh+dt@kernel.org;
> > > krzysztof.kozlowski+dt@linaro.org; s.hauer@pengutronix.de;
> > > kernel@pengutronix.de; festevam@gmail.com; marex@denx.de;
> > > devicetree@vger.kernel.org; Peng Fan <peng.fan@nxp.com>;
> > > Markus.Niebel@ew.tq-group.com; laurent.pinchart@ideasonboard.com;
> > > paul.elder@ideasonboard.com; dl-linux-imx <linux-imx@nxp.com>;
> > > aford173@gmail.com; linux-arm-kernel@lists.infradead.org;
> > > l.stach@pengutronix.de
> > > Subject: Re: [PATCH] arm64: dts: imx8mp: correct usb clocks
> > >
> > > Hi Li,
> > >
> > > On 22-08-24, Li Jun wrote:
> > > > After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> > > > usb_root_clk is no longer for suspend clock so update dts
> > > > accordingly to use right bus clock and suspend clock.
> > >
> > > Please don't send two seperate patchsets for this topic, since they
> > > can be applied delayed. So your v2 should contain the patches from [1]
> > as well.
> > 
> > Understood, I will put all in one patch set in v2.
> 
> Since the clock part patches[1] already were accepted, I think this
> corresponding dts fix patch should be okay as it is.

Should I apply the DTS patch for v6.0-rc or v6.1?  My understanding is
that it needs to appear in the same release as clock patch[1], right?

Shawn

> 
> [1] https://lore.kernel.org/linux-arm-kernel/1661328262-3867-2-git-send-email-jun.li@nxp.com/
