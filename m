Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0D8A6ADF68
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 14:00:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229935AbjCGNAV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 08:00:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbjCGNAQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 08:00:16 -0500
Received: from out-1.mta1.migadu.com (out-1.mta1.migadu.com [95.215.58.1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A09807BA23
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 04:59:34 -0800 (PST)
Date:   Tue, 7 Mar 2023 13:59:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
        t=1678193960;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=r2adqBZzwVPrCWJ6KktdI0n6miVbkRpo6iawIZ0KFHY=;
        b=YSetbgjdENqh52gc2j1SdW5FOWVXeqFP3e6iC4uQ0EBVKCpscI2IqWRrRRSYvI6voEzJlG
        d2ez8eIaUhJNO7IbarCwApo+8lm+hcaHpGjJpRkPHsM5qBNV8zdePAHzP/tRh1KbELIoFZ
        Pc0xQNx265GrUAmH4k+zbENYW8FWX18=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   Richard Leitner <richard.leitner@linux.dev>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org, Liu Ying <victor.liu@nxp.com>,
        dri-devel@lists.freedesktop.org,
        Robert Foss <robert.foss@linaro.org>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 2/4] drm/bridge: imx: add bridge wrapper driver for
 i.MX8MP DWC HDMI
Message-ID: <20230307125916.GB722857@g0hl1n.net>
References: <20221216210742.3233382-1-l.stach@pengutronix.de>
 <20221216210742.3233382-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216210742.3233382-2-l.stach@pengutronix.de>
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

On Fri, Dec 16, 2022 at 10:07:40PM +0100, Lucas Stach wrote:
> Add a simple wrapper driver for the DWC HDMI bridge driver that
> implements the few bits that are necessary to abstract the i.MX8MP
> SoC integration.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Tested-by: Marek Vasut <marex@denx.de>

I've successfully tested this patch on our custom i.MX8MP board. The
test case was basically "cat /dev/urandom > /dev/fb1" with a 800x480
HDMI display.

Therefore please feel free to add:

Tested-by: Richard Leitner <richard.leitner@skidata.com>

> ---
>  drivers/gpu/drm/bridge/imx/Kconfig       |   9 ++
>  drivers/gpu/drm/bridge/imx/Makefile      |   2 +
>  drivers/gpu/drm/bridge/imx/imx8mp-hdmi.c | 140 +++++++++++++++++++++++
>  3 files changed, 151 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi.c
