Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDF765B3A6F
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 16:12:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbiIIOMy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 10:12:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbiIIOMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 10:12:54 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A6ACA50F5
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 07:12:51 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oWekR-0005nv-Fv; Fri, 09 Sep 2022 16:12:47 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     linux-rockchip@lists.infradead.org,
        Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, cl@rock-chips.com,
        s.hauer@pengutronix.de, pgwipeout@gmail.com, vkoul@kernel.org,
        kishon@ti.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        hjc@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 4/5] phy/rockchip: inno-dsidphy: Add support for rk3568
Date:   Fri, 09 Sep 2022 16:12:46 +0200
Message-ID: <42364235.doPnVEEUbh@diego>
In-Reply-To: <20220906174823.28561-5-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com> <20220906174823.28561-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 6. September 2022, 19:48:22 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Rockchip RK3568 DSI-DPHY. Registers were taken from
> the BSP kernel driver and wherever possible cross referenced with the
> TRM.

With the amount of refactoring done below, I'd expect a bit more
introductory text here ;-)

I.e. about older variants of the phy only supporting 1GHz rates and
newer ones supporting up to 2.5GHz and that you refactor some things
to make both variants work.

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
>  1 file changed, 158 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> index 630e01b5c19b..2c5847faff63 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
> @@ -84,9 +84,25 @@
>  #define DATA_LANE_0_SKEW_PHASE_MASK		GENMASK(2, 0)
>  #define DATA_LANE_0_SKEW_PHASE(x)		UPDATE(x, 2, 0)
>  /* Analog Register Part: reg08 */
> +#define PLL_POST_DIV_ENABLE_MASK		BIT(5)
> +#define PLL_POST_DIV_ENABLE			BIT(5)
>  #define SAMPLE_CLOCK_DIRECTION_MASK		BIT(4)
>  #define SAMPLE_CLOCK_DIRECTION_REVERSE		BIT(4)
>  #define SAMPLE_CLOCK_DIRECTION_FORWARD		0
> +#define LOWFRE_EN_MASK				BIT(5)

PLL_POST_DIR_ENABLE above also is BIT(5) ... is this correct?


otherwise the changes look great.

Heiko


