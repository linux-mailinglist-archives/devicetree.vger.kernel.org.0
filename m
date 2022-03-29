Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D71934EAE57
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 15:22:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236130AbiC2NYb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 09:24:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235104AbiC2NYa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 09:24:30 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08B0E5A17C
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 06:22:48 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id 906B41F427D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1648560166;
        bh=fkYLreROLaT3/ibZDuXdX+BsL1eXrW9BPtkQObOUCLI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=SH2cosC88mdr4JJm9YuIlwoNjheKrDyBxC/UwAl3gfENxnzbYLa3augL9iNYg7xcR
         MVQC5j09cDSp6eId5pdWMsktMXaM4BK59ObEKqu4aq/z2WCvpBgbPt/NK7HNL4/jFs
         AerULpX/HvC6XH0M6JmPJUGeQqC6RWuuyXNuQcokzL2Ic5Vgu0fuxkBfrjDCHlbWoS
         f27WFyR/56vhRuHA7tyh/gOiC/V5sCHLVYAA5bzYLD7RvcOU5RgFp6FLXqLc6t7FYH
         lTTkCeeDd8VbwmG4kstNqKmbOjE2GQJf07VKQhB98ciN4ZHprKweQVbaFk99KzrgGl
         u26dLk8elbCww==
Message-ID: <72850490-44aa-32b3-a963-6e1d38d35db7@collabora.com>
Date:   Tue, 29 Mar 2022 16:22:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v9 01/23] clk: rk3568: Mark hclk_vo as critical
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-2-s.hauer@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220328151116.2034635-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/28/22 18:10, Sascha Hauer wrote:
> Whenever pclk_vo is enabled hclk_vo must be enabled as well. This is
> described in the Reference Manual as:
> 
> | 2.8.6 NIU Clock gating reliance
> |
> | A part of niu clocks have a dependence on another niu clock in order to
> | sharing the internal bus. When these clocks are in use, another niu
> | clock must be opened, and cannot be gated.  These clocks and the special
> | clock on which they are relied are as following:
> |
> | Clocks which have dependency     The clock which can not be gated
> | -----------------------------------------------------------------
> | ...
> | pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
> | ...
> 
> The clock framework doesn't offer a way to enable clock B whenever clock A is
> enabled, at least not when B is not an ancestor of A. Workaround this by
> marking hclk_vo as critical so it is never disabled. This is suboptimal in
> terms of power consumption, but a stop gap solution until the clock framework
> has a way to deal with this.
> 
> We have this clock tree:
> 
> |      aclk_vo                  2        2        0   300000000          0     0  50000         Y
> |         aclk_hdcp             0        0        0   300000000          0     0  50000         N
> |         pclk_vo               2        3        0    75000000          0     0  50000         Y
> |            pclk_edp_ctrl      0        0        0    75000000          0     0  50000         N
> |            pclk_dsitx_1       0        0        0    75000000          0     0  50000         N
> |            pclk_dsitx_0       1        2        0    75000000          0     0  50000         Y
> |            pclk_hdmi_host     1        2        0    75000000          0     0  50000         Y
> |            pclk_hdcp          0        0        0    75000000          0     0  50000         N
> |         hclk_vo               2        5        0   150000000          0     0  50000         Y
> |            hclk_hdcp          0        0        0   150000000          0     0  50000         N
> |            hclk_vop           0        2        0   150000000          0     0  50000         N
> 
> Without this patch the edp, dsitx, hdmi and hdcp driver would enable their
> clocks which then enables pclk_vo, but hclk_vo stays disabled and register
> accesses just hang. hclk_vo is enabled by the VOP2 driver, so reproducibility
> of this issue depends on the probe order.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v8:
>     - new patch
> 
>  drivers/clk/rockchip/clk-rk3568.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index 63dfbeeeb06d9..62694d95173ab 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -1591,6 +1591,7 @@ static const char *const rk3568_cru_critical_clocks[] __initconst = {
>  	"hclk_php",
>  	"pclk_php",
>  	"hclk_usb",
> +	"hclk_vo",
>  };
>  
>  static const char *const rk3568_pmucru_critical_clocks[] __initconst = {

Nice! That's much better than the DT hacks, IMO, thank you.

Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
