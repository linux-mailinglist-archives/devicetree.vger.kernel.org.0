Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 377494CBD3A
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 12:58:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231231AbiCCL7S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 06:59:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbiCCL7O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 06:59:14 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 25149133971
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 03:58:29 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E589C1424;
        Thu,  3 Mar 2022 03:58:28 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81ACC3F70D;
        Thu,  3 Mar 2022 03:58:24 -0800 (PST)
Message-ID: <fa051752-c98a-df6f-27a3-dd4c0de1caf5@arm.com>
Date:   Thu, 3 Mar 2022 11:58:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 2/3 v4] dts: rockchip: Add #clock-cells value for rk805
Content-Language: en-GB
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
 <20220302232612.25455-3-macroalpha82@gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220302232612.25455-3-macroalpha82@gmail.com>
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

On 2022-03-02 23:26, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Based on a brief discussion on the mailing list it was determined that
> clock-cells should be a required parameter in the event that a consumer
> of the clock gets added in an overlay.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   arch/arm/boot/dts/rv1108-elgin-r1.dts      | 1 +
>   arch/arm/boot/dts/rv1108-evb.dts           | 1 +
>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 1 +
>   3 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rv1108-elgin-r1.dts
> index f62c9f7af79d..0c99a5934ebf 100644
> --- a/arch/arm/boot/dts/rv1108-elgin-r1.dts
> +++ b/arch/arm/boot/dts/rv1108-elgin-r1.dts
> @@ -72,6 +72,7 @@ rk805: pmic@18 {
>   		interrupt-parent = <&gpio0>;
>   		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
>   		rockchip,system-power-controller;
> +		#clock-cells = <0>;
>   
>   		vcc1-supply = <&vcc_sys>;
>   		vcc2-supply = <&vcc_sys>;
> diff --git a/arch/arm/boot/dts/rv1108-evb.dts b/arch/arm/boot/dts/rv1108-evb.dts
> index fe5fc9bf75c9..46cad7cb94bf 100644
> --- a/arch/arm/boot/dts/rv1108-evb.dts
> +++ b/arch/arm/boot/dts/rv1108-evb.dts
> @@ -85,6 +85,7 @@ rk805: pmic@18 {
>   		interrupt-parent = <&gpio0>;
>   		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
>   		rockchip,system-power-controller;
> +		#clock-cells = <0>;
>   
>   		vcc1-supply = <&vcc_sys>;
>   		vcc2-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> index de2d3e88e27f..40bf808642b9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -160,6 +160,7 @@ pmic@18 {
>   		pinctrl-0 = <&pmic_int_l>;
>   		rockchip,system-power-controller;
>   		wakeup-source;
> +		#clock-cells = <0>;
>   
>   		vcc1-supply = <&vcc_sys>;
>   		vcc2-supply = <&vcc_sys>;
