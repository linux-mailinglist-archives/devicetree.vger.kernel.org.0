Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5065644134
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 11:25:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233853AbiLFKZR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 05:25:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiLFKZP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 05:25:15 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D42FFE0E0
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 02:25:13 -0800 (PST)
Received: from [192.168.0.43] (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 855EC558;
        Tue,  6 Dec 2022 11:25:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1670322311;
        bh=FRpVQpAKdcDLHxsdGwBa/QJJ3Wf3W/i6A3L8hkpt+Yw=;
        h=Date:To:Cc:References:From:Subject:In-Reply-To:From;
        b=WeNpH56Zk0+q2t8AXWXMSmwXd+JUtUthAKH4bW6EsiMr9fBLXKfJ9rWL0OjuKyYAI
         2whV5YArlKgMDJsTcvrilpmk0BudQmQ3U7KE/lDvy/SGU2N9z69WD8VzDid0rWit4f
         uzAJl+La6AiIsUD7WO0/XBca/JI2QOuHxrlLExg4=
Message-ID: <2cf061d8-dc5d-ec2d-02a0-10cc59daa7b0@ideasonboard.com>
Date:   Tue, 6 Dec 2022 10:25:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>,
        krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net, linux-imx@nxp.com, kernel@pengutronix.de,
        festevam@gmail.com, laurent.pinchart@ideasonboard.com
References: <20221017151050.2321919-1-dan.scally@ideasonboard.com>
 <20221017151050.2321919-4-dan.scally@ideasonboard.com>
 <23e61494-5567-5701-3a90-3b8105b4c944@pengutronix.de>
From:   Dan Scally <dan.scally@ideasonboard.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: Add device tree for the Debix Model A
 Board
In-Reply-To: <23e61494-5567-5701-3a90-3b8105b4c944@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ahmad - thanks for the review

On 01/12/2022 17:10, Ahmad Fatoum wrote:
> Hello Daniel,
>
> On 17.10.22 17:10, Daniel Scally wrote:
>> Add a device tree file describing the Debix Model A board from
>> Polyhex Technology Co.
> Thanks for your patch. Some minor comments below.
>
>> Changes in v3 (Laurent):
>>
>>      - Added IOB copyright notice
>>      - Removed the eth node for the connector that's on the separate I/O
>>      board
> I'd have left the FEC node in and described the PHY, but left the FEC disabled.
> Only the magnetics are on the expansion board, while the PHY is on the
> base board.


Fair enough, though there's quite a lot else on the base board which 
we've left off simply because we're not currently using it. I'm inclined 
to treat this the same for now.


>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright 2019 NXP
>> + * Copyright 2022 Ideas on Board Oy
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/leds/common.h>
>> +#include <dt-bindings/usb/pd.h>
>> +
>> +#include "imx8mp.dtsi"
>> +
>> +/ {
>> +	model = "Polyhex Debix Model A i.MX8MPlus board";
>> +	compatible = "polyhex,imx8mp-debix-model-a", "fsl,imx8mp";
> I see that Model A and Model B share the same SoC and PCB. Could you
> add polyhex,imx8mp-debix as a second compatible? That way, bootloader
> may match against that compatible when they support both.
> You'll need to adjust the binding accordingly.


Sure, makes sense to me

>
>> +
>> +	chosen {
>> +		stdout-path = &uart2;
>> +	};
>> +
>> +	gpio-leds {
>> +		compatible = "gpio-leds";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pinctrl_gpio_led>;
>> +
>> +		status-led {
>> +			function = LED_FUNCTION_POWER;
>> +			color = <LED_COLOR_ID_RED>;
>> +			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
>> +			default-state = "on";
>> +		};
>> +	};
>> +
>> +	reg_usdhc2_vmmc: regulator-usdhc2 {
>> +		compatible = "regulator-fixed";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
>> +		regulator-name = "VSD_3V3";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
>> +		enable-active-high;
>> +	};
>> +};
>> +
>> +&A53_0 {
>> +	cpu-supply = <&buck2>;
>> +};
>> +
>> +&A53_1 {
>> +	cpu-supply = <&buck2>;
>> +};
>> +
>> +&A53_2 {
>> +	cpu-supply = <&buck2>;
>> +};
>> +
>> +&A53_3 {
>> +	cpu-supply = <&buck2>;
>> +};
>> +
>> +&eqos {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_eqos>;
>> +	phy-connection-type = "rgmii-id";
>> +	phy-handle = <&ethphy0>;
>> +	status = "okay";
>> +
>> +	mdio {
>> +		compatible = "snps,dwmac-mdio";
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		ethphy0: ethernet-phy@0 {
> Could you append a /* RTL8211E */ comment here? This can be very useful for others
> who need to bring up the same chip in the future.


Sure

>
>> +			compatible = "ethernet-phy-ieee802.3-c22";
>> +			reg = <0>;
> Is the PHY really at address 0 or does it just answer at this address
> because it's the broadcast address?


I confess I'm unsure here, the number here comes from the downstream 
.dts, which in this instance I've trusted...is there any way I can check?

>
>
>> +&iomuxc {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_hog>;
>> +
>> +	pinctrl_hog: hoggrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL			0x400001c3
>> +			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA			0x400001c3
>> +			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD				0x40000019
>> +			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC				0x40000019
> Why do you hog these?
>
>> +	pinctrl_usb1_vbus: usb1grp {
> This is unused.


Ah both for other elements of the board which aren't included in this 
set, as they don't work properly yet. Apologies; I'll remove those.

>
>> +	pinctrl_usdhc2: usdhc2grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x190
>> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d0
>> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d0
>> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d0
>> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d0
>> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d0
>> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT				0xc1
> Just to make sure this doesn't fry SD-Cards by mistake: VSELECT is indeed
> connected to a 1.8V/3.3V switch powering vqmmc?
>
>> +/* SD Card */
>> +&usdhc2 {
>> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
>> +	assigned-clock-rates = <400000000>;
> I wonder why this is necessary. Do you see a difference
> in /sys/kernel/debug/mmcX/ios between having this and leaving
> it out?


I don't actually...it's present in the imx8mp-evk.dts which this is 
based on, but in addition to not seeing any difference there the SD card 
still seems fine as far as I can tell (same read / write speed in 
practice) - I'll take it out, thanks

>
>> +	status = "okay";
>> +};
>> +
>> +/* eMMc */
> eMMC

Ack
>> +&usdhc3 {
>> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
>> +	assigned-clock-rates = <400000000>;
>> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
>> +	pinctrl-0 = <&pinctrl_usdhc3>;
>> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
>> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
>> +	bus-width = <8>;
>> +	non-removable;
>> +	status = "okay";
>> +};
>> +
>> +&wdog1 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_wdog>;
>> +	fsl,ext-reset-output;
>> +	status = "okay";
>> +};
>
> Cheers,
> Ahmad
>
