Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45BE867C528
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 08:51:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235633AbjAZHvo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 02:51:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234698AbjAZHvn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 02:51:43 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3F488698
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 23:51:42 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5C67361755
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 07:51:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51479C433EF;
        Thu, 26 Jan 2023 07:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674719501;
        bh=Hv11EF/3zUhlPCt+x+0Flls6D9QmZx79MA8wZ2wG1ao=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=R4IHDgRmsS+nPAiqJrR7Aq8O/4l/XYuXvwgnSMeK2SssoYQZdIUc/2fvlaeJFXvyz
         Ws5YJYHfeevhnvhz01kA65COtfZO6nkZzUKCQlGuurLgjJo4nROT+7dCkfCnEjgImv
         u6V+aeCR37kGZmF2uHS4IIVyXnHbWbZaU1dK9go6dpWdserqWf5jmjGsfjgCPvT0/b
         4TNGd1p37MId/YQHnK5JTN21F2hs7USqmiN1h/lXNterekRv5cFnFqyfN6D2VqXWuG
         ERSsCIx4iDMU6sEyeBWzg4h5FwQEUQM1NuLearZyNUbM/RbZW7SZilnyXA2gO8Phb7
         T5ubZjFgUwUng==
Date:   Thu, 26 Jan 2023 15:51:33 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Improve bluetooth UART on DH
 electronics i.MX8M Plus DHCOM
Message-ID: <20230126075132.GA20713@T480>
References: <20230117223942.130170-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117223942.130170-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 17, 2023 at 11:39:42PM +0100, Marek Vasut wrote:
> Use PLL1_80M instead of PLL3 to drive UART2 clock divided down to 80 MHz
> instead of 64 MHz to obtain suitable block clock for exact 4 Mbdps, which
> is the maximum supported baud rate by the muRata 2AE BT UART.
> 
> The difference here is that at 64 MHz UART block clock, the clock with are
> divided by 16 (due to oversampling) to 4 MHz and the baud rate generator
> then needs to be set to UBIR+1/UBMR+1 = 1/1 to yield 4 Mbdps . In case of
> 80 MHz UART block clock divided by 16 to 5 MHz, the baud rate generator
> needs to be set to UBIR+1/UBMR+1 = 4/5 to yield 4 Mbdps .
> 
> Both options are valid and yield the same result, except using the PLL1_80M
> output requires fewer clock tree changes, since the PLL1 already generates
> the 80 MHz usable for UART, which frees the PLL3 for other uses.
> 
> Suggested-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
