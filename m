Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 928B25B6560
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 04:07:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbiIMCHR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 22:07:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbiIMCHQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 22:07:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 671CE50051
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 19:07:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 01CAB612ED
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:07:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88AEEC433D6;
        Tue, 13 Sep 2022 02:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1663034834;
        bh=6szBzBcA80yfhLBaS718DT01/BeRIqYhT2meY4Qtyl8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qELHrdFTR09Frx+jF5R60y3ci5sXEhT7FFIDHMy6X86j7OdAjHlGKKStEYtC3cCDv
         A+eNDPM+RP8cAxXVTitYUtzuYD+drHwNahrzf7l0XqNXOR6tbFLKaGahnOpQJYtkB/
         E3BkaAoUCOOqC+j4tCzcw8btbLfJAnMV/kR36Xaf1vyvOk7WtFlU8ExdddpJlP17ir
         MrndvPFBwk5m6CXe/lDnC8gQ6Xku17AoqPFnA/aKV3XH9mj3k4kqykvt7Z7GCCGZZ1
         wQU2PcEvsyZOgnAjpnCwKxzXyQM6mR1FXeeJDVJAoHO3SE0Fn6Onq/rZ9MxoTnP9ua
         8OgyY6cron0Wg==
Date:   Tue, 13 Sep 2022 10:07:08 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: Re: [EXT] Re: [PATCH v6 5/5] arm64: dts: freescale: add support for
 i.MX8DXL EVK board
Message-ID: <20220913020708.GE1728671@dragon>
References: <20220822175245.222691-1-shenwei.wang@nxp.com>
 <20220822175245.222691-6-shenwei.wang@nxp.com>
 <20220903034819.GF1728671@dragon>
 <PAXPR04MB9185D243324279DD80C371DB897E9@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <20220912081649.GR1728671@dragon>
 <PAXPR04MB9185F52BA6FEC47E6412EB3C89449@PAXPR04MB9185.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB9185F52BA6FEC47E6412EB3C89449@PAXPR04MB9185.eurprd04.prod.outlook.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 12, 2022 at 02:35:18PM +0000, Shenwei Wang wrote:
> 
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Monday, September 12, 2022 3:17 AM
> > To: Shenwei Wang <shenwei.wang@nxp.com>
> > Cc: Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
> > <krzysztof.kozlowski+dt@linaro.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> > Pengutronix Kernel Team <kernel@pengutronix.de>; Peng Fan
> > <peng.fan@nxp.com>; devicetree@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; imx@lists.linux.dev; dl-linux-imx <linux-
> > imx@nxp.com>
> > > > > +
> > > > > +     reg_fec1_sel: regulator-1 {
> > > > > +             compatible = "regulator-fixed";
> > > > > +             regulator-name = "fec1_supply";
> > > > > +             regulator-min-microvolt = <3300000>;
> > > > > +             regulator-max-microvolt = <3300000>;
> > > > > +             gpio = <&pca6416_1 11 GPIO_ACTIVE_HIGH>;
> > > >
> > > > Missing enable-active-high?
> > >
> > > No. Enabling this regulator to select the fec1 interface instead of usdhc2.
> > Pulling this GPIO pin to low is to use FEC1 interface.
> > 
> > Then the polarity cell should be GPIO_ACTIVE_LOW rather than
> > GPIO_ACTIVE_HIGH?
> > 
> 
> That doesn't matter since any GPIO phandle flags are ignored in the node of "regulator-fixed".  The final flag is only determined by the property of "enable-active-high".  If there is a "enable-active-high", the GPIO line works as active high. If no such a property, it works as active low by default. Right?
> 

Well, we are talking about the correctness of DT (hardware description),
not how kernel driver works with DT.

Shawn
