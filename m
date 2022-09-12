Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBAF45B55CA
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 10:17:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbiILIRB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 04:17:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229705AbiILIQ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 04:16:59 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DDC925EBA
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 01:16:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A0C5FB80C99
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 08:16:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7853AC433C1;
        Mon, 12 Sep 2022 08:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662970616;
        bh=d2lJvNgrRtlyC5oOofFV5LY/kFsntq4GasXOTeJDkIQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ATb0HKe9GAMoIt2DoPt5vkoWd+IyrC0RrT4xmHJ+opigh+sL3DuhMCKwQiGlOJqwF
         Q0K8qwui/IuoEQzQDTm04C02I4akllW/ilUIf/FYjm/pryj0BHjIhKycAsM8ogIzWY
         fehFTUS12KBml6Ieg6OGpygKWZyTA2bIYntG0O0w5kXPYSedTJLSAXAz96F9WLYIPC
         wGFOjh+ygYt9RatXKRaPeGeJBOOIl8UEJo8Hwob87d2I1qeI75R+nUsIh1Apl5kixo
         63mBqDbylIPHo3eAA39D2pGdPSSX8EyVw4sCkcmSS9E0TWpEBTNFsi55kf22itKzLa
         dcys7jWok6bOA==
Date:   Mon, 12 Sep 2022 16:16:49 +0800
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
Message-ID: <20220912081649.GR1728671@dragon>
References: <20220822175245.222691-1-shenwei.wang@nxp.com>
 <20220822175245.222691-6-shenwei.wang@nxp.com>
 <20220903034819.GF1728671@dragon>
 <PAXPR04MB9185D243324279DD80C371DB897E9@PAXPR04MB9185.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB9185D243324279DD80C371DB897E9@PAXPR04MB9185.eurprd04.prod.outlook.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 06, 2022 at 01:15:37PM +0000, Shenwei Wang wrote:
> 
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Friday, September 2, 2022 10:48 PM
> > To: Shenwei Wang <shenwei.wang@nxp.com>
> > Cc: Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
> > <krzysztof.kozlowski+dt@linaro.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> > Pengutronix Kernel Team <kernel@pengutronix.de>; Peng Fan
> > <peng.fan@nxp.com>; devicetree@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; imx@lists.linux.dev; dl-linux-imx <linux-
> > imx@nxp.com>
> > Subject: [EXT] Re: [PATCH v6 5/5] arm64: dts: freescale: add support for
> > i.MX8DXL EVK board
> > 
> > > +             regulator-always-on;
> > > +     };
> > > +
> > > +     reg_fec1_sel: regulator-1 {
> > > +             compatible = "regulator-fixed";
> > > +             regulator-name = "fec1_supply";
> > > +             regulator-min-microvolt = <3300000>;
> > > +             regulator-max-microvolt = <3300000>;
> > > +             gpio = <&pca6416_1 11 GPIO_ACTIVE_HIGH>;
> > 
> > Missing enable-active-high?
> 
> No. Enabling this regulator to select the fec1 interface instead of usdhc2. Pulling this GPIO pin to low is to use FEC1 interface. 

Then the polarity cell should be GPIO_ACTIVE_LOW rather than
GPIO_ACTIVE_HIGH?

Shawn
