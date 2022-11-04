Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05942619A54
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 15:42:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232008AbiKDOmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 10:42:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232359AbiKDOmG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 10:42:06 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0E282317F5
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 07:41:17 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A94C1FB;
        Fri,  4 Nov 2022 07:41:23 -0700 (PDT)
Received: from [10.57.36.87] (unknown [10.57.36.87])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78E083F703;
        Fri,  4 Nov 2022 07:41:16 -0700 (PDT)
Message-ID: <fbb14294-59c4-da70-4865-6b6994f8e292@arm.com>
Date:   Fri, 4 Nov 2022 14:41:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] arm64: rockchip: Remove unknown regulator-init-microvolt
 property
Content-Language: en-GB
To:     Thierry Reding <thierry.reding@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20221104132046.1555932-1-thierry.reding@gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20221104132046.1555932-1-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-11-04 13:20, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The regulator-init-microvolt is not defined anywhere and not used by any
> driver, so remove it from existing device trees.

<vague memory triggers...>

There *are* drivers that use it, just not in Linux[1][2][3]. Having a 
single canonical bindings repo can't come soon enough :(

Robin.

[1] 
https://source.denx.de/u-boot/u-boot/-/blob/master/doc/device-tree-bindings/regulator/regulator.txt#L40
[2] 
https://source.denx.de/u-boot/u-boot/-/blob/master/drivers/power/regulator/pwm_regulator.c#L108
[3] 
https://source.denx.de/u-boot/u-boot/-/blob/master/drivers/power/regulator/regulator-uclass.c#L455

> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts          | 1 -
>   arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts       | 1 -
>   arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi        | 1 -
>   arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi       | 2 --
>   arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts      | 2 --
>   arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts      | 2 --
>   arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts          | 2 --
>   arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi       | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts      | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts        | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts       | 3 ---
>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts         | 3 ---
>   13 files changed, 29 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> index 7ea48167747c..9232357f4fec 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> @@ -106,7 +106,6 @@ vdd_core: vdd-core {
>   		regulator-name = "vdd_core";
>   		regulator-min-microvolt = <827000>;
>   		regulator-max-microvolt = <1340000>;
> -		regulator-init-microvolt = <1015000>;
>   		regulator-settling-time-up-us = <250>;
>   		regulator-always-on;
>   		regulator-boot-on;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> index a71f249ed384..e9810d2f0407 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> @@ -105,7 +105,6 @@ vdd_core: vdd-core {
>   		regulator-name = "vdd_core";
>   		regulator-min-microvolt = <827000>;
>   		regulator-max-microvolt = <1340000>;
> -		regulator-init-microvolt = <1015000>;
>   		regulator-settling-time-up-us = <250>;
>   		regulator-always-on;
>   		regulator-boot-on;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> index b6e082f1f6d9..7c5f441a2219 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> @@ -375,7 +375,6 @@ regulator-state-mem {
>   			vcc_sdio: LDO_REG4 {
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <3000000>;
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <3300000>;
>   				regulator-name = "vcc_sdio";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> index 41262a69d33e..a71973b16075 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> @@ -356,7 +356,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_logic";
> @@ -371,7 +370,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_gpu";
> @@ -533,7 +531,6 @@ vdd_cpu: regulator@40 {
>   		regulator-boot-on;
>   		regulator-min-microvolt = <712500>;
>   		regulator-max-microvolt = <1390000>;
> -		regulator-init-microvolt = <900000>;
>   		regulator-name = "vdd_cpu";
>   		regulator-ramp-delay = <2300>;
>   		vin-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> index 8d61f824c12d..d899087bf0b5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> @@ -264,7 +264,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-always-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> @@ -278,7 +277,6 @@ vdd_gpu_npu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu_npu";
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 25a8c781f4e7..854d02b46e6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -366,7 +366,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_logic";
> @@ -381,7 +380,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_gpu";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index 77b179cd20e7..fc38b30d3722 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -277,7 +277,6 @@ vdd_log: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   
>   				regulator-state-mem {
> @@ -292,7 +291,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <900000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   
>   				regulator-state-mem {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> index 61c7a3ad7387..45807d7e22eb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> @@ -250,7 +250,6 @@ vdd_log: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   
>   				regulator-state-mem {
> @@ -263,7 +262,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-min-microvolt = <900000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   
>   				regulator-state-mem {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> index 5bcd4be32964..e23e2293d10a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> @@ -192,7 +192,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-state-mem {
> @@ -207,7 +206,6 @@ vdd_gpu: DCDC_REG2 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-ramp-delay = <6001>;
>   				regulator-initial-mode = <0x2>;
>   					regulator-state-mem {
> @@ -230,7 +228,6 @@ vdd_npu: DCDC_REG4 {
>   				regulator-boot-on;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-name = "vdd_npu";
>   				regulator-state-mem {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index 26d7fda275ed..a70b89e39dd6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -301,7 +301,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -315,7 +314,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -339,7 +337,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 674792567fa6..19f8fc369b13 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -293,7 +293,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -307,7 +306,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -331,7 +329,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> index 59ecf868dbd0..a337f547caf5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> @@ -291,7 +291,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -305,7 +304,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -329,7 +327,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index ea74ba32fbbd..482c892567de 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -340,7 +340,6 @@ vdd_logic: DCDC_REG1 {
>   				regulator-name = "vdd_logic";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -354,7 +353,6 @@ regulator-state-mem {
>   			vdd_gpu: DCDC_REG2 {
>   				regulator-name = "vdd_gpu";
>   				regulator-always-on;
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
> @@ -378,7 +376,6 @@ regulator-state-mem {
>   
>   			vdd_npu: DCDC_REG4 {
>   				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>   				regulator-initial-mode = <0x2>;
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <1350000>;
