Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97FA5644198
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 11:53:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234428AbiLFKxH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 05:53:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234417AbiLFKxG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 05:53:06 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EADE72DFF
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 02:53:04 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1p2VZH-0005Mx-1x; Tue, 06 Dec 2022 11:52:55 +0100
Message-ID: <3b5c698d-b915-3d96-1c8a-ac2891360015@pengutronix.de>
Date:   Tue, 6 Dec 2022 11:52:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 3/3] arm64: dts: Add device tree for the Debix Model A
 Board
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Dan Scally <dan.scally@ideasonboard.com>
Cc:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        s.hauer@pengutronix.de, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net, linux-imx@nxp.com, kernel@pengutronix.de,
        festevam@gmail.com
References: <20221017151050.2321919-1-dan.scally@ideasonboard.com>
 <20221017151050.2321919-4-dan.scally@ideasonboard.com>
 <23e61494-5567-5701-3a90-3b8105b4c944@pengutronix.de>
 <2cf061d8-dc5d-ec2d-02a0-10cc59daa7b0@ideasonboard.com>
 <Y48dZbkswJrUOk8V@pendragon.ideasonboard.com>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Y48dZbkswJrUOk8V@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Laurent, Dan,

On 06.12.22 11:45, Laurent Pinchart wrote:
> On Tue, Dec 06, 2022 at 10:25:08AM +0000, Dan Scally wrote:
>> Hi Ahmad - thanks for the review
>>
>> On 01/12/2022 17:10, Ahmad Fatoum wrote:
>>> Hello Daniel,
>>>
>>> On 17.10.22 17:10, Daniel Scally wrote:
>>>> Add a device tree file describing the Debix Model A board from
>>>> Polyhex Technology Co.
>>>
>>> Thanks for your patch. Some minor comments below.
>>>
>>>> Changes in v3 (Laurent):
>>>>
>>>>      - Added IOB copyright notice
>>>>      - Removed the eth node for the connector that's on the separate I/O
>>>>      board
>>> I'd have left the FEC node in and described the PHY, but left the FEC disabled.
>>> Only the magnetics are on the expansion board, while the PHY is on the
>>> base board.
>>
>> Fair enough, though there's quite a lot else on the base board which 
>> we've left off simply because we're not currently using it. I'm inclined 
>> to treat this the same for now.
> 
> Overall I think it's a good strategy, if we haven't tested a peripheral
> we shouldn't include it yet. Missing pieces can be added later. Of
> course if there are pieces that are easy to test already, we can include
> them.

I generally agree, but I tested the FEC with the magnetics on the I/O board
and the DT description from the older patch set worked correctly.

Cheers,
Ahmad

> 
>>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>> +/*
>>>> + * Copyright 2019 NXP
>>>> + * Copyright 2022 Ideas on Board Oy
>>>> + */
>>>> +
>>>> +/dts-v1/;
>>>> +
>>>> +#include <dt-bindings/gpio/gpio.h>
>>>> +#include <dt-bindings/leds/common.h>
>>>> +#include <dt-bindings/usb/pd.h>
>>>> +
>>>> +#include "imx8mp.dtsi"
>>>> +
>>>> +/ {
>>>> +	model = "Polyhex Debix Model A i.MX8MPlus board";
>>>> +	compatible = "polyhex,imx8mp-debix-model-a", "fsl,imx8mp";
>>>
>>> I see that Model A and Model B share the same SoC and PCB. Could you
>>> add polyhex,imx8mp-debix as a second compatible? That way, bootloader
>>> may match against that compatible when they support both.
>>> You'll need to adjust the binding accordingly.
>>
>> Sure, makes sense to me
>>
>>>> +
>>>> +	chosen {
>>>> +		stdout-path = &uart2;
>>>> +	};
>>>> +
>>>> +	gpio-leds {
>>>> +		compatible = "gpio-leds";
>>>> +		pinctrl-names = "default";
>>>> +		pinctrl-0 = <&pinctrl_gpio_led>;
>>>> +
>>>> +		status-led {
>>>> +			function = LED_FUNCTION_POWER;
>>>> +			color = <LED_COLOR_ID_RED>;
>>>> +			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
>>>> +			default-state = "on";
>>>> +		};
>>>> +	};
>>>> +
>>>> +	reg_usdhc2_vmmc: regulator-usdhc2 {
>>>> +		compatible = "regulator-fixed";
>>>> +		pinctrl-names = "default";
>>>> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
>>>> +		regulator-name = "VSD_3V3";
>>>> +		regulator-min-microvolt = <3300000>;
>>>> +		regulator-max-microvolt = <3300000>;
>>>> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
>>>> +		enable-active-high;
>>>> +	};
>>>> +};
>>>> +
>>>> +&A53_0 {
>>>> +	cpu-supply = <&buck2>;
>>>> +};
>>>> +
>>>> +&A53_1 {
>>>> +	cpu-supply = <&buck2>;
>>>> +};
>>>> +
>>>> +&A53_2 {
>>>> +	cpu-supply = <&buck2>;
>>>> +};
>>>> +
>>>> +&A53_3 {
>>>> +	cpu-supply = <&buck2>;
>>>> +};
>>>> +
>>>> +&eqos {
>>>> +	pinctrl-names = "default";
>>>> +	pinctrl-0 = <&pinctrl_eqos>;
>>>> +	phy-connection-type = "rgmii-id";
>>>> +	phy-handle = <&ethphy0>;
>>>> +	status = "okay";
>>>> +
>>>> +	mdio {
>>>> +		compatible = "snps,dwmac-mdio";
>>>> +		#address-cells = <1>;
>>>> +		#size-cells = <0>;
>>>> +
>>>> +		ethphy0: ethernet-phy@0 {
>>>
>>> Could you append a /* RTL8211E */ comment here? This can be very useful for others
>>> who need to bring up the same chip in the future.
>>
>> Sure
>>
>>>> +			compatible = "ethernet-phy-ieee802.3-c22";
>>>> +			reg = <0>;
>>>
>>> Is the PHY really at address 0 or does it just answer at this address
>>> because it's the broadcast address?
>>
>> I confess I'm unsure here, the number here comes from the downstream 
>> .dts, which in this instance I've trusted...is there any way I can check?
>>
>>>> +&iomuxc {
>>>> +	pinctrl-names = "default";
>>>> +	pinctrl-0 = <&pinctrl_hog>;
>>>> +
>>>> +	pinctrl_hog: hoggrp {
>>>> +		fsl,pins = <
>>>> +			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL			0x400001c3
>>>> +			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA			0x400001c3
>>>> +			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD				0x40000019
>>>> +			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC				0x40000019
>>>
>>> Why do you hog these?
>>>
>>>> +	pinctrl_usb1_vbus: usb1grp {
>>>
>>> This is unused.
>>
>> Ah both for other elements of the board which aren't included in this 
>> set, as they don't work properly yet. Apologies; I'll remove those.
>>
>>>> +	pinctrl_usdhc2: usdhc2grp {
>>>> +		fsl,pins = <
>>>> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x190
>>>> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d0
>>>> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d0
>>>> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d0
>>>> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d0
>>>> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d0
>>>> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT				0xc1
>>>
>>> Just to make sure this doesn't fry SD-Cards by mistake: VSELECT is indeed
>>> connected to a 1.8V/3.3V switch powering vqmmc?
>>>
>>>> +/* SD Card */
>>>> +&usdhc2 {
>>>> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
>>>> +	assigned-clock-rates = <400000000>;
>>>
>>> I wonder why this is necessary. Do you see a difference
>>> in /sys/kernel/debug/mmcX/ios between having this and leaving
>>> it out?
>>
>> I don't actually...it's present in the imx8mp-evk.dts which this is 
>> based on, but in addition to not seeing any difference there the SD card 
>> still seems fine as far as I can tell (same read / write speed in 
>> practice) - I'll take it out, thanks
>>
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>> +/* eMMc */
>>>
>>> eMMC
>>
>> Ack
>>
>>>> +&usdhc3 {
>>>> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
>>>> +	assigned-clock-rates = <400000000>;
>>>> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
>>>> +	pinctrl-0 = <&pinctrl_usdhc3>;
>>>> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
>>>> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
>>>> +	bus-width = <8>;
>>>> +	non-removable;
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>> +&wdog1 {
>>>> +	pinctrl-names = "default";
>>>> +	pinctrl-0 = <&pinctrl_wdog>;
>>>> +	fsl,ext-reset-output;
>>>> +	status = "okay";
>>>> +};
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

