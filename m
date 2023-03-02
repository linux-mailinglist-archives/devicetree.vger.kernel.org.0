Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C1396A818A
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 12:51:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjCBLv3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 06:51:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbjCBLv2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 06:51:28 -0500
Received: from out-12.mta1.migadu.com (out-12.mta1.migadu.com [IPv6:2001:41d0:203:375::c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A31DE35247
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 03:51:24 -0800 (PST)
Date:   Thu, 2 Mar 2023 12:51:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
        t=1677757882;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=qM9VsOTra5rMGvnVUwUjQd2c4sexZRU5z39YFPaaRGo=;
        b=Pzvmk6koYEAZTYV7XpclkjFl0il/EwInI/u0iwvlpqPxAywVLt0nrp0acg6Ey/w+qKnjf6
        wko83c1tOOdNIDicBM2S8UftG8O8qTgZv7apRI7d31oAETOq2HREK1r/uoorQ3AolvbFFM
        Iy/gBcZOh6p9wX8I/i5fVKbNp6dyREE=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   Richard Leitner <richard.leitner@linux.dev>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-clk@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Abel Vesa <abelvesa@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Michael Turquette <mturquette@baylibre.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 4/5] arm64: dts: imx8mp: Add SAI, SDMA, AudioMIX
Message-ID: <ZACNuAOJd+uXBKyJ@g0hl1n.net>
References: <20230301163257.49005-1-marex@denx.de>
 <20230301163257.49005-4-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230301163257.49005-4-marex@denx.de>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 01, 2023 at 05:32:56PM +0100, Marek Vasut wrote:
> Add all SAI nodes, SDMA2 and SDMA3 nodes, and AudioMIX node. This is
> needed to get audio operational on i.MX8MP .
> 
> Acked-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Tested-by: Adam Ford <aford173@gmail.com> #imx8mp-beacon-kit
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

Hi Marek,
I've successfully tested this patch on a custom i.MX8MP board. Therefore
please feel free to add:

Tested-by: Richard Leitner <richard.leitner@skidata.com>
