Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 812174F6216
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 16:49:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234991AbiDFOs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 10:48:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235283AbiDFOrg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 10:47:36 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 42B79541E22
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 04:15:40 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D150423A;
        Wed,  6 Apr 2022 04:15:39 -0700 (PDT)
Received: from [10.57.41.19] (unknown [10.57.41.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E042C3F718;
        Wed,  6 Apr 2022 04:15:37 -0700 (PDT)
Message-ID: <bb429523-6a06-33ab-2289-22ef5fa8b0cb@arm.com>
Date:   Wed, 6 Apr 2022 12:15:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v9 01/23] clk: rk3568: Mark hclk_vo as critical
Content-Language: en-GB
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-2-s.hauer@pengutronix.de>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220328151116.2034635-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-9.8 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-03-28 16:10, Sascha Hauer wrote:
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

FWIW,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>      Changes since v8:
>      - new patch
> 
>   drivers/clk/rockchip/clk-rk3568.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index 63dfbeeeb06d9..62694d95173ab 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -1591,6 +1591,7 @@ static const char *const rk3568_cru_critical_clocks[] __initconst = {
>   	"hclk_php",
>   	"pclk_php",
>   	"hclk_usb",
> +	"hclk_vo",
>   };
>   
>   static const char *const rk3568_pmucru_critical_clocks[] __initconst = {
