Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AE36652143
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 14:10:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233497AbiLTNKA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 08:10:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233028AbiLTNJ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 08:09:58 -0500
X-Greylist: delayed 545 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 20 Dec 2022 05:09:56 PST
Received: from out-227.mta0.migadu.com (out-227.mta0.migadu.com [91.218.175.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2A0310563
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 05:09:56 -0800 (PST)
Date:   Tue, 20 Dec 2022 14:00:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
        t=1671541248;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=U/k/xRY6aCVROjNQKNqVLAAjqWFVIFXn4dmdJEoeZ/c=;
        b=L2Yh9q4cgw1d4IASaLA22zE/BRlp9TFADReqAMHspDAp0QTeef3wrT6R4neo+3qyUWGnlo
        /7sLvHiooTZinRTSQd9RBcZKL2FKylUFqRXcQ5BWmuzytzvMLTy9NkxgENhUPI7J6a0hof
        9jFH0miGR1xTiLhWgJneTsExN3AVNm4=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   Richard Leitner <richard.leitner@linux.dev>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mp: Add LCDIF2 & LDB nodes
Message-ID: <Y6Gx/mwh/jwRMOxP@g0hl1n.net>
References: <20221208090842.2869374-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221208090842.2869374-1-alexander.stein@ew.tq-group.com>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 08, 2022 at 10:08:41AM +0100, Alexander Stein wrote:
> LCDIF2 is directly attached to the LVDS Display Bridge (LDB).
> Both need the same clock source (VIDEO_PLL1).
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Successfully tested this patch on a custom i.MX8MP board. Therefore
please feel free to add

Tested-by: Richard Leitner <richard.leitner@linux.dev>

Thanks & regards;rl
