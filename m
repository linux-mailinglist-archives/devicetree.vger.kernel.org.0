Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BE6A4CBD36
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 12:57:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbiCCL6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 06:58:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbiCCL6k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 06:58:40 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1EDCB109A50
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 03:57:55 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5BBF1424;
        Thu,  3 Mar 2022 03:57:54 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 917F93F70D;
        Thu,  3 Mar 2022 03:57:51 -0800 (PST)
Message-ID: <7ebbc850-a6ca-ce77-aa1b-d8c30172f752@arm.com>
Date:   Thu, 3 Mar 2022 11:57:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 1/3 v4] arm64: dts: rockchip: Remove vcc13 and vcc14 for
 rk808
Content-Language: en-GB
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
 <20220302232612.25455-2-macroalpha82@gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220302232612.25455-2-macroalpha82@gmail.com>
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
> The Rockchip rk808 Power Management IC does not have a vcc13 or a
> vcc14. The schematics for at least the Pinebook Pro suggest this is
> actually vcc1 and vcc2, and may be an artifact from the reference
> design schematic).

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 --
>   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      | 2 --
>   2 files changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index c2f021a1a18f..20f71317d7ab 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -472,8 +472,6 @@ rk808: pmic@1b {
>   		vcc10-supply = <&vcc_sysin>;
>   		vcc11-supply = <&vcc_sysin>;
>   		vcc12-supply = <&vcc3v3_sys>;
> -		vcc13-supply = <&vcc_sysin>;
> -		vcc14-supply = <&vcc_sysin>;
>   
>   		regulators {
>   			/* rk3399 center logic supply */
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index d1aaf8e83391..0e45cc2d195b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -310,8 +310,6 @@ rk808: pmic@1b {
>   		vcc10-supply = <&vcc3v3_sys>;
>   		vcc11-supply = <&vcc3v3_sys>;
>   		vcc12-supply = <&vcc3v3_sys>;
> -		vcc13-supply = <&vcc3v3_sys>;
> -		vcc14-supply = <&vcc3v3_sys>;
>   		vddio-supply = <&vcc_3v0>;
>   
>   		regulators {
