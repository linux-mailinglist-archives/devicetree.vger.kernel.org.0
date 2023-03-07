Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B912B6ADF6D
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 14:01:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbjCGNBV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 08:01:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbjCGNBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 08:01:15 -0500
Received: from out-40.mta0.migadu.com (out-40.mta0.migadu.com [91.218.175.40])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6358B6EBD
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 05:01:01 -0800 (PST)
Date:   Tue, 7 Mar 2023 14:00:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
        t=1678194059;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=EP/T6xo9IyCh8niTEXo+aKkGY4Bcvv1OlF9vvjntq7k=;
        b=CAn8VZLeMTBYZXtw3sqmMU/kb8S8bIm/RIAJgYjXLUZqANu68+jIb1GL9jn5lPii8cCdoO
        dEdzmld/YOs2Pe17c6qnzMOw+bmKaME+TENtkui4wKlm6GJCgEE1GeMShhriWbJM148L5e
        /7cb+J+eRbZ2lELpsPvR1JIc4Yqt8co=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   Richard Leitner <richard.leitner@linux.dev>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v2 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20230307130057.GC722857@g0hl1n.net>
References: <20221215201100.2897501-1-l.stach@pengutronix.de>
 <20221215201100.2897501-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221215201100.2897501-2-l.stach@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Thu, Dec 15, 2022 at 09:11:00PM +0100, Lucas Stach wrote:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

I've successfully tested this patch on our custom i.MX8MP board. The
test case was basically "cat /dev/urandom > /dev/fb1" with a 800x480
HDMI display.

Therefore please feel free to add:

Tested-by: Richard Leitner <richard.leitner@skidata.com>

> ---
> v2: use DEFINE_RUNTIME_DEV_PM_OPS
> ---
>  drivers/phy/freescale/Kconfig                |   6 +
>  drivers/phy/freescale/Makefile               |   1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 694 +++++++++++++++++++
>  3 files changed, 701 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
