Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D08F6768597
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 15:30:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230085AbjG3NaQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 09:30:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230064AbjG3NaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 09:30:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAEE710FE
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 06:30:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8882860C5E
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 13:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B092C433CA;
        Sun, 30 Jul 2023 13:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690723813;
        bh=DkXQlNOac2eE1JY7q3ukZcGW0ZkwD7YiOuSCt+LfMak=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qK2izV9KM4PNVKQe1SzLTih63F2/w84mG4qIbZbCuYxAW/7GHhZPExKMyh2aZYn2n
         dJnp3lV+n2Y1G0Vom5FxtV9tGMXkKDg1687h4o5rbwDdFOdSfoqlab1q9OjlrKV573
         9lpZkfd8xfiC48cADSvFaEFpVPZUHxo3C/rYCgptrqvaFefMLF3qs6VUinJs37OjTA
         QMnya3ONdrDNHePOxD/r0JnauVN243M2ZtyQH0wBufTJb4iztTvy6UH/LuKOuKPDyq
         dbPPs4ngukY5li3SZz7VZzpV9el8gnWWyUlzVvQdGbMjAA5NBLeaPgl8v7HWd1B3Yt
         C/j12RhVHx2qQ==
Date:   Sun, 30 Jul 2023 21:29:57 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Adam Ford <aford173@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Jun <jun.li@nxp.com>,
        Marco Felsch <m.felsch@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mn: Drop CSI1 PHY reference clock
 configuration
Message-ID: <20230730132957.GT151430@dragon>
References: <20230724222247.162806-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230724222247.162806-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 25, 2023 at 12:22:47AM +0200, Marek Vasut wrote:
> The CSI1 PHY reference clock are limited to 125 MHz according to:
> i.MX 8M Nano Applications Processor Reference Manual, Rev. 2, 07/2022
> Table 5-1. Clock Root Table (continued) / page 319
> Slice Index n = 123 .
> 
> Currently those IMX8MN_CLK_CSI1_PHY_REF clock are configured to be
> fed directly from 1 GHz PLL2 , which overclocks them . Instead, drop
> the configuration altogether, which defaults the clock to 24 MHz REF
> clock input, which for the PHY reference clock is just fine.
> 
> Fixes: ae9279f301b5 ("arm64: dts: imx8mn: Add CSI and ISI Nodes")
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
