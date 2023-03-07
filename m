Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 671526ADF62
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 13:59:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbjCGM7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 07:59:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbjCGM7S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 07:59:18 -0500
Received: from out-18.mta0.migadu.com (out-18.mta0.migadu.com [91.218.175.18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29E9C8236D
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 04:58:28 -0800 (PST)
Date:   Tue, 7 Mar 2023 13:58:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
        t=1678193903;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=bnLlNpToBe2Wxh//H25/0RSflDwSXinEtO74lQGo+kA=;
        b=GWWN5jZ+VX+XI6SaavgzctFdHk+qY4YP12Pqucv7tPrTMY8K/7SS28MQ6SGYafpZq0XHNs
        +bmsUCcwiQ8PvnN7ocNJH+2YkLyXCGv/xTKkAFuIA/K4Dc342ujbU5/7VXym2bAXPCHG0N
        iNvhCboePuaU67VLRncd68F3ALeILY0=
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
Subject: Re: [PATCH v2 4/4] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
Message-ID: <20230307125821.GA722857@g0hl1n.net>
References: <20221216210742.3233382-1-l.stach@pengutronix.de>
 <20221216210742.3233382-4-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216210742.3233382-4-l.stach@pengutronix.de>
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

hope I got the latest version of this series. If not, please feel free
to point me to the correct one.

On Fri, Dec 16, 2022 at 10:07:42PM +0100, Lucas Stach wrote:
> This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has a
> full timing generator and can switch between different video sources. On
> the i.MX8MP however the only supported source is the LCDIF. The block
> just needs to be powered up and told about the polarity of the video
> sync signals to act in bypass mode.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>

I've successfully tested this patch on our custom i.MX8MP board. The
test case was basically "cat /dev/urandom > /dev/fb1" with a 800x480
HDMI display.

Therefore please feel free to add:

Tested-by: Richard Leitner <richard.leitner@skidata.com>

> ---
>  drivers/gpu/drm/bridge/imx/Kconfig           |   7 +
>  drivers/gpu/drm/bridge/imx/Makefile          |   1 +
>  drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c | 202 +++++++++++++++++++
>  3 files changed, 210 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
> 
