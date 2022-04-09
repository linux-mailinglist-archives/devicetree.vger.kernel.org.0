Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6E224FA1DE
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 04:59:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229790AbiDIDB6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 23:01:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229745AbiDIDB4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 23:01:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A1D533A07
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 19:59:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E48BB62274
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 02:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA34C385A3;
        Sat,  9 Apr 2022 02:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649473190;
        bh=mTqvXmUS+BoBPL+EEcw2Y9+uhsfV2sMi7KoB9xhv0Y8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jtD+wXUiLCzWGm2Mq/UJUB6sZzI54VZ2l0bBf2Irn5kwuuub0CsN3Na0c0j84w2DV
         aasGM+sVdupM8KJE+P3VHNAiAhnT37ofEJXsp4HrUaO5n23+a42HTzoNJ388tb96ZF
         PHqRbKhZes1N2l8NRwt1W33BnxD5PozSjoXoLHwSSIxTuaqsrGJsgdzU3hKj7ESj5I
         u0fEMqLnq2xfcuXF0zvthEf2rb/aBwBpoKpGcU/skIVOUiPS8vwNo2J3+h5IKUkJ9J
         crDi+RhL+7Jzf1kPodjCHPYz/dgo2L04Zfl717lQHMa2Z2oO6odeOFrqGbNUvWxeOX
         VbbwZIPmk7VtA==
Date:   Sat, 9 Apr 2022 10:59:44 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Liu Ying <victor.liu@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8qm: Correct SCU clock controller's
 compatible property
Message-ID: <20220409025944.GY129381@dragon>
References: <20220304080443.1733924-1-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220304080443.1733924-1-victor.liu@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 04, 2022 at 04:04:43PM +0800, Liu Ying wrote:
> The fsl,scu.txt dt-binding documentation explicitly mentions
> that the compatible string should be either "fsl,imx8qm-clock"
> or "fsl,imx8qxp-clock", followed by "fsl,scu-clk".  Also, i.MX8qm
> SCU clocks and i.MX8qxp SCU clocks are really not the same, so
> we have to set the compatible property according to SoC name.
> Let's correct the i.MX8qm clock controller's compatible property
> from
> "fsl,imx8qxp-clk", "fsl,scu-clk"
> to
> "fsl,imx8qm-clk", "fsl,scu-clk" .
> 
> Fixes: f2180be18a63 ("arm64: dts: imx: add imx8qm common dts file")
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>

Applied, thanks!
