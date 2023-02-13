Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C4106948A2
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 15:51:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230476AbjBMOvI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 09:51:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230404AbjBMOvA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 09:51:00 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CAE61CAE0
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 06:50:48 -0800 (PST)
Received: from [192.168.1.141] ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MofPt-1omF3P4A6z-00p6hu; Mon, 13 Feb 2023 15:50:31 +0100
Message-ID: <369bc678-0daa-ab4e-9d2f-db0e6e005a08@i2se.com>
Date:   Mon, 13 Feb 2023 15:50:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/9] ARM: dts: imx28-apf28: Convert to use label
 references
Content-Language: en-US
To:     =?UTF-8?Q?S=c3=a9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
 <20230201203338.9525-2-stefan.wahren@i2se.com>
 <58919223-cd4e-9a54-52ab-90f86552d4e2@armadeus.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <58919223-cd4e-9a54-52ab-90f86552d4e2@armadeus.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:kYQABmQbhjeYY68Vp7Lf6SAGIq1ybeCEDT3ikWgxKLK5f6PHf1p
 ST9U/ZbKJQKyF+A0fcBnIEqFSq/jMAZ3lpS/Ppc3aHCwxvesprmkbUFWKcSPDSQ/Gel1AOa
 XXimOCXPvfe1iAU+bV4Hcmf56ixUC22lcou7lK7/O2iCQKoOWE8iKX649bgIU1W6mIrzwND
 zfo0FpTiQrlTZqBP8Rhhg==
UI-OutboundReport: notjunk:1;M01:P0:HOmTh6YzxWw=;tfN3qeYSKuqNUe6jziG1DguDmjj
 woFn/JQpnPnESc3VN5bMo5hOW4f/tKg0pfmk2m66k+pz7L83tQdV78jakz6bMDyjbexvDTfu3
 Kb7rdmP86QsiXN+Z9izGwtoDl8t8anSJzNRMGhAHhHBkbn9RAETRXnsB1TVxmoXNPZ3Mf+Xa7
 d88Y19Jl3PHz32UegLwR0lbXwRh1TvrxniSoX24W5R6bHILGuC71hMJpHjuY9uAe2rOHW+330
 5r1GaeMdGJ/Hu6tG5lo/SUNPUare4d7i+6Y2iodbiqB5MJ6EeKjXzVGod9nP+jB2sChxcgnxq
 R9dZ/AofN/K9sgNmLGpBCYsxU+Z4kYe+teEK8RQPIwPTgW5GaOw5U+NbpCgkbNp02m5hVs4qU
 eoa1Fpm8/h4adTZcOxlO6Cjj5lKkhM5B4CS9hh1H/Fru9ZXOI7TCu5e0USGASND5iY4lkojDZ
 GT1ZvPp2oH3cKd8TBCX0IGFk/B7Ix4f70c6AcYOwxjTckhJUx4O/ULaUECetNcyzi2dcKumYW
 f6ERsmiFoufJLUOEQO0+3jTKnrSIEuDbuapbm1Y1Cih1u8UyPh+dkJ0QGEWucRWp5sLHi5bB2
 0f/m/O6ZDBujbsWagpQsM6b2jpROv8mhoggtRlUKF5l5oTll6pcvCuw7VTfsSXs2yk/PCgGPR
 oX/qefVQEIEkbgIek8ETaatMfv7tm3hKa5x8WCH8qw==
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sébastien,

Am 13.02.23 um 09:22 schrieb Sébastien Szymanski:
> Hello Stefan,
>
> On 2/1/23 21:33, Stefan Wahren wrote:
>> These Armadeus board files still use node name and unit address
>> to reference parts from the imx28.dtsi . This causes a lot of
>> redundancy. So use label references in order to make it easier
>> to maintain.
>>
>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
>> Cc: <support@armadeus.com>
>> ---
>>   arch/arm/boot/dts/imx28-apf28.dts    |  96 ++++-----
>>   arch/arm/boot/dts/imx28-apf28dev.dts | 312 +++++++++++++--------------
>>   2 files changed, 196 insertions(+), 212 deletions(-)
>>
>>
...
>> diff --git a/arch/arm/boot/dts/imx28-apf28dev.dts 
>> b/arch/arm/boot/dts/imx28-apf28dev.dts
>> index 1b253b47006c..47e2397193ad 100644
>> --- a/arch/arm/boot/dts/imx28-apf28dev.dts
>> +++ b/arch/arm/boot/dts/imx28-apf28dev.dts
>> @@ -10,166 +10,6 @@ / {
>>       model = "Armadeus Systems APF28Dev docking/development board";
>>       compatible = "armadeus,imx28-apf28dev", "armadeus,imx28-apf28", 
>> "fsl,imx28";
...
>> -
>>       regulators {
>>           compatible = "simple-bus";
>>           #address-cells = <1>;
>> @@ -223,3 +63,155 @@ user-button {
>>           };
>>       };
>>   };
>> +
>> +&auart0 {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&auart0_pins_a>;
>> +    uart-has-rtscts;
>> +    status = "okay";
>> +};
>> +
>> +&can0 {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&can0_pins_a>;
>> +    xceiver-supply = <&reg_can0_vcc>;
>> +    status = "okay";
>> +};
>> +
>> +&lcdif {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&lcdif_16bit_pins_a
>> +            &lcdif_pins_apf28dev>;
>> +    display = <&display0>;
>> +    status = "okay";
>> +
>> +    display0: display0 {
>> +        bits-per-pixel = <16>;
>> +        bus-width = <16>;
>> +
>> +        display-timings {
>> +            native-mode = <&timing0>;
>> +            timing0: timing0 {
>> +                clock-frequency = <33000033>;
>> +                hactive = <800>;
>> +                vactive = <480>;
>> +                hback-porch = <96>;
>> +                hfront-porch = <96>;
>> +                vback-porch = <20>;
>> +                vfront-porch = <21>;
>> +                hsync-len = <64>;
>> +                vsync-len = <4>;
>> +                hsync-active = <1>;
>> +                vsync-active = <1>;
>> +                de-active = <1>;
>> +                pixelclk-active = <0>;
>> +            };
>> +        };
>> +    };
>> +};
>> +
>> +&lradc {
>> +    fsl,lradc-touchscreen-wires = <4>;
>> +    status = "okay";
>> +};
>> +
>> +&i2c0 {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&i2c0_pins_a>;
>> +    status = "okay";
>> +};
>
> This i2c0 node should be before the lcdif node to have the nodes in 
> alphabetical order.
thanks for pointing out. I will fix this if this series is still wanted.
>
> Regards,
>
>> +
>> +&mac1 {
>> +    phy-mode = "rmii";
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&mac1_pins_a>;
>> +    phy-reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
>> +    status = "okay";
>> +};
>> +
>> +&pinctrl {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&hog_pins_apf28dev>;
>> +
>> +    hog_pins_apf28dev: hog@0 {
>> +        reg = <0>;
>> +        fsl,pinmux-ids = <
>> +            MX28_PAD_LCD_D16__GPIO_1_16
>> +            MX28_PAD_LCD_D17__GPIO_1_17
>> +            MX28_PAD_LCD_D18__GPIO_1_18
>> +            MX28_PAD_LCD_D19__GPIO_1_19
>> +            MX28_PAD_LCD_D20__GPIO_1_20
>> +            MX28_PAD_LCD_D21__GPIO_1_21
>> +            MX28_PAD_LCD_D22__GPIO_1_22
>> +            MX28_PAD_GPMI_CE1N__GPIO_0_17
>> +        >;
>> +        fsl,drive-strength = <MXS_DRIVE_4mA>;
>> +        fsl,voltage = <MXS_VOLTAGE_HIGH>;
>> +        fsl,pull-up = <MXS_PULL_DISABLE>;
>> +    };
>> +
>> +    lcdif_pins_apf28dev: lcdif-apf28dev@0 {
>> +        reg = <0>;
>> +        fsl,pinmux-ids = <
>> +            MX28_PAD_LCD_RD_E__LCD_VSYNC
>> +            MX28_PAD_LCD_WR_RWN__LCD_HSYNC
>> +            MX28_PAD_LCD_RS__LCD_DOTCLK
>> +            MX28_PAD_LCD_CS__LCD_ENABLE
>> +        >;
>> +        fsl,drive-strength = <MXS_DRIVE_4mA>;
>> +        fsl,voltage = <MXS_VOLTAGE_HIGH>;
>> +        fsl,pull-up = <MXS_PULL_DISABLE>;
>> +    };
>> +
>> +    usb0_otg_apf28dev: otg-apf28dev@0 {
>> +        reg = <0>;
>> +        fsl,pinmux-ids = <
>> +            MX28_PAD_LCD_D23__GPIO_1_23
>> +        >;
>> +        fsl,drive-strength = <MXS_DRIVE_4mA>;
>> +        fsl,voltage = <MXS_VOLTAGE_HIGH>;
>> +        fsl,pull-up = <MXS_PULL_DISABLE>;
>> +    };
>> +};
>
> The pinctrl node is usually placed at the end of the file.
This confuses me, because this isn't alphabetical order anymore. I never 
heard of this.
>
> Thank you !
>
> Regards,
>
>> +
>> +&pwm {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&pwm3_pins_a &pwm4_pins_a>;
>> +    status = "okay";
>> +};
>> +
>> +&ssp0 {
>> +    compatible = "fsl,imx28-mmc";
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&mmc0_4bit_pins_a
>> +        &mmc0_cd_cfg &mmc0_sck_cfg>;
>> +    bus-width = <4>;
>> +    status = "okay";
>> +};
>> +
>> +&ssp2 {
>> +    compatible = "fsl,imx28-spi";
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&spi2_pins_a>;
>> +    status = "okay";
>> +};
>> +
>> +&usb0 {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&usb0_otg_apf28dev
>> +            &usb0_id_pins_b>;
>> +    vbus-supply = <&reg_usb0_vbus>;
>> +    status = "okay";
>> +};
>> +
>> +&usb1 {
>> +    status = "okay";
>> +};
>> +
>> +&usbphy0 {
>> +    status = "okay";
>> +};
>> +
>> +&usbphy1 {
>> +    status = "okay";
>> +};
>
