Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C63D5AE525
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 12:18:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234055AbiIFKSu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 06:18:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233912AbiIFKSt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 06:18:49 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16B534199F
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 03:18:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 92205B8172A
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:18:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24972C433C1;
        Tue,  6 Sep 2022 10:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662459525;
        bh=aSG58OJUSIlldzylJxkmqmG+tncIAODb0GanK6Lft4E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=vHEvGNnJVPiBg9TlvA2OoLafyYloHHFAMYiggffCtu+Kx08fhO73OPaf2x/ETiV3Q
         1t+ClGCaCKXHNSgu1rhDYT8ebaEYudwgSX0qoAwkB/AnpzxbLKy0eXvkpMD2jzgA7L
         MaUiPbeDQFr4uqAN879kmzPEPCPUHK0Z1LP4DeQxSfgw+3Gc8nEE5iSFBQRQx0wopk
         SYdH5756R1oUgyveYZ2K6F6YOdJs2YRalVry1G6HHTRa14mSeRmQVVGKmixAWwzrue
         +V9Jk7gqOXekL+Mvw9o7Qv+278oU7zmIAIcMvc0R76FUGKiv/tQCXLJc/hDxEeknZo
         jrCdlNm5ENhTg==
Date:   Tue, 6 Sep 2022 18:18:37 +0800
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
Message-ID: <20220906101837.GP1728671@dragon>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
 <20220824091044.msaa4lymgyrmektl@pengutronix.de>
 <PA4PR04MB964059A132A12DE73801C86189739@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <PA4PR04MB9640A5B008D6D97C5F5AB7F2897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <20220906094343.GO1728671@dragon>
 <PA4PR04MB9640FA621C9E03C167EFA607897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PA4PR04MB9640FA621C9E03C167EFA607897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 06, 2022 at 09:49:28AM +0000, Jun Li wrote:
> Hi Shawn,
> 
> > > > > Hi Li,
> > > > >
> > > > > On 22-08-24, Li Jun wrote:
> > > > > > After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk
> > > > > > parent"), usb_root_clk is no longer for suspend clock so update
> > > > > > dts accordingly to use right bus clock and suspend clock.
> > > > >
> > > > > Please don't send two seperate patchsets for this topic, since
> > > > > they can be applied delayed. So your v2 should contain the patches
> > > > > from [1]
> > > > as well.
> > > >
> > > > Understood, I will put all in one patch set in v2.
> > >
> > > Since the clock part patches[1] already were accepted, I think this
> > > corresponding dts fix patch should be okay as it is.
> > 
> > Should I apply the DTS patch for v6.0-rc or v6.1?  My understanding is that
> > it needs to appear in the same release as clock patch[1], right?
> 
> Yes, it needs to appear in the same release as clock patch[1].

So could you find out which release the clock patch is targeting?

Shawn
