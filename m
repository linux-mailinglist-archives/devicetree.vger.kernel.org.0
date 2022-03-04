Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44BD74CD56C
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 14:47:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232707AbiCDNsW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 08:48:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230415AbiCDNsV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 08:48:21 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B4DDE26F7
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 05:47:32 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79F4E1396;
        Fri,  4 Mar 2022 05:47:32 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E1D63F70D;
        Fri,  4 Mar 2022 05:47:30 -0800 (PST)
Message-ID: <926e583e-14d1-67ee-f3dd-4f2cb57ea638@arm.com>
Date:   Fri, 4 Mar 2022 13:47:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 3/4 v5] dts: rockchip: Update regulator name for PX3
Content-Language: en-GB
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
 <20220303203958.4904-4-macroalpha82@gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220303203958.4904-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-03-03 20:39, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The regulator name of SWITCH_REG1 does not match any other board
> with a rk818 PMIC, nor does it correspond to a regulator in the
> rk808-regulator driver. Changing name to SWITCH_REG which is
> consistent with other boards and is in the driver.

The datasheet I found also names the channel "SWITCH" rather than 
"SWITCH1", so this seems correct to me.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   arch/arm/boot/dts/rk3188-px3-evb.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3188-px3-evb.dts b/arch/arm/boot/dts/rk3188-px3-evb.dts
> index 39c60426c9c9..fc478ac4e781 100644
> --- a/arch/arm/boot/dts/rk3188-px3-evb.dts
> +++ b/arch/arm/boot/dts/rk3188-px3-evb.dts
> @@ -212,7 +212,7 @@ wl_18: LDO_REG8 {
>   				regulator-name = "wl_18";
>   			};
>   
> -			lcd_33: SWITCH_REG1 {
> +			lcd_33: SWITCH_REG {
>   				regulator-name = "lcd_33";
>   			};
>   		};
