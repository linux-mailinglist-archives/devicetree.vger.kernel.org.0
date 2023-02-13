Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 298A4693FD6
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:43:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbjBMInm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:43:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230036AbjBMInl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:43:41 -0500
X-Greylist: delayed 600 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 13 Feb 2023 00:43:38 PST
Received: from 8.mo576.mail-out.ovh.net (8.mo576.mail-out.ovh.net [46.105.56.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B071BCC19
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:43:38 -0800 (PST)
Received: from director4.ghost.mail-out.ovh.net (unknown [10.108.1.170])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id 0E7492407F
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 08:25:55 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-mwxg6 (unknown [10.110.171.145])
        by director4.ghost.mail-out.ovh.net (Postfix) with ESMTPS id F15051FE68;
        Mon, 13 Feb 2023 08:25:54 +0000 (UTC)
Received: from armadeus.com ([37.59.142.105])
        by ghost-submission-6684bf9d7b-mwxg6 with ESMTPSA
        id LGdONxL06WOQ4TwAajzWtg
        (envelope-from <sebastien.szymanski@armadeus.com>); Mon, 13 Feb 2023 08:25:54 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-105G0061590fb33-c5ab-4591-86a0-cc3a2d57ae45,
                    E09B7956A821E9598FCC7E510BF6D42AC2B746FB) smtp.auth=sebastien.szymanski@armadeus.com
X-OVh-ClientIp: 92.148.253.243
Message-ID: <58919223-cd4e-9a54-52ab-90f86552d4e2@armadeus.com>
Date:   Mon, 13 Feb 2023 09:22:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
 <20230201203338.9525-2-stefan.wahren@i2se.com>
From:   =?UTF-8?Q?S=c3=a9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 1/9] ARM: dts: imx28-apf28: Convert to use label
 references
In-Reply-To: <20230201203338.9525-2-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 17587400974104914712
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudeitddguddukecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkffggfgfvvehfhffujggtgfesthekredttdefjeenucfhrhhomhepuforsggrshhtihgvnhcuufiihihmrghnshhkihcuoehsvggsrghsthhivghnrdhsiiihmhgrnhhskhhisegrrhhmrgguvghushdrtghomheqnecuggftrfgrthhtvghrnhepkeeukeejleehhefhvefgtefhjeegffeigeekueegiedugeejveeuvdekleeugeffnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeoshgvsggrshhtihgvnhdrshiihihmrghnshhkihesrghrmhgruggvuhhsrdgtohhmqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheejiedpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Stefan,

On 2/1/23 21:33, Stefan Wahren wrote:
> These Armadeus board files still use node name and unit address
> to reference parts from the imx28.dtsi . This causes a lot of
> redundancy. So use label references in order to make it easier
> to maintain.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Cc: <support@armadeus.com>
> ---
>   arch/arm/boot/dts/imx28-apf28.dts    |  96 ++++-----
>   arch/arm/boot/dts/imx28-apf28dev.dts | 312 +++++++++++++--------------
>   2 files changed, 196 insertions(+), 212 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx28-apf28.dts b/arch/arm/boot/dts/imx28-apf28.dts
> index 14a92fe59770..98672932e41b 100644
> --- a/arch/arm/boot/dts/imx28-apf28.dts
> +++ b/arch/arm/boot/dts/imx28-apf28.dts
> @@ -14,67 +14,59 @@ memory@40000000 {
>   		device_type = "memory";
>   		reg = <0x40000000 0x08000000>;
>   	};
> +};
>   
> -	apb@80000000 {
> -		apbh@80000000 {
> -			nand-controller@8000c000 {
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
> -				status = "okay";
> -
> -				partition@0 {
> -					label = "u-boot";
> -					reg = <0x0 0x300000>;
> -				};
> +&duart {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&duart_pins_a>;
> +	status = "okay";
> +};
>   
> -				partition@300000 {
> -					label = "env";
> -					reg = <0x300000 0x80000>;
> -				};
> +&gpmi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
> +	status = "okay";
>   
> -				partition@380000 {
> -					label = "env2";
> -					reg = <0x380000 0x80000>;
> -				};
> +	partition@0 {
> +		label = "u-boot";
> +		reg = <0x0 0x300000>;
> +	};
>   
> -				partition@400000 {
> -					label = "dtb";
> -					reg = <0x400000 0x80000>;
> -				};
> +	partition@300000 {
> +		label = "env";
> +		reg = <0x300000 0x80000>;
> +	};
>   
> -				partition@480000 {
> -					label = "splash";
> -					reg = <0x480000 0x80000>;
> -				};
> +	partition@380000 {
> +		label = "env2";
> +		reg = <0x380000 0x80000>;
> +	};
>   
> -				partition@500000 {
> -					label = "kernel";
> -					reg = <0x500000 0x800000>;
> -				};
> +	partition@400000 {
> +		label = "dtb";
> +		reg = <0x400000 0x80000>;
> +	};
>   
> -				partition@d00000 {
> -					label = "rootfs";
> -					reg = <0xd00000 0xf300000>;
> -				};
> -			};
> -		};
> +	partition@480000 {
> +		label = "splash";
> +		reg = <0x480000 0x80000>;
> +	};
>   
> -		apbx@80040000 {
> -			duart: serial@80074000 {
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&duart_pins_a>;
> -				status = "okay";
> -			};
> -		};
> +	partition@500000 {
> +		label = "kernel";
> +		reg = <0x500000 0x800000>;
>   	};
>   
> -	ahb@80080000 {
> -		mac0: ethernet@800f0000 {
> -			phy-mode = "rmii";
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&mac0_pins_a>;
> -			phy-reset-gpios = <&gpio4 13 GPIO_ACTIVE_LOW>;
> -			status = "okay";
> -		};
> +	partition@d00000 {
> +		label = "rootfs";
> +		reg = <0xd00000 0xf300000>;
>   	};
>   };
> +
> +&mac0 {
> +	phy-mode = "rmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mac0_pins_a>;
> +	phy-reset-gpios = <&gpio4 13 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx28-apf28dev.dts b/arch/arm/boot/dts/imx28-apf28dev.dts
> index 1b253b47006c..47e2397193ad 100644
> --- a/arch/arm/boot/dts/imx28-apf28dev.dts
> +++ b/arch/arm/boot/dts/imx28-apf28dev.dts
> @@ -10,166 +10,6 @@ / {
>   	model = "Armadeus Systems APF28Dev docking/development board";
>   	compatible = "armadeus,imx28-apf28dev", "armadeus,imx28-apf28", "fsl,imx28";
>   
> -	apb@80000000 {
> -		apbh@80000000 {
> -			ssp0: spi@80010000 {
> -				compatible = "fsl,imx28-mmc";
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&mmc0_4bit_pins_a
> -					&mmc0_cd_cfg &mmc0_sck_cfg>;
> -				bus-width = <4>;
> -				status = "okay";
> -			};
> -
> -			ssp2: spi@80014000 {
> -				compatible = "fsl,imx28-spi";
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&spi2_pins_a>;
> -				status = "okay";
> -			};
> -
> -			pinctrl@80018000 {
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&hog_pins_apf28dev>;
> -
> -				hog_pins_apf28dev: hog@0 {
> -					reg = <0>;
> -					fsl,pinmux-ids = <
> -						MX28_PAD_LCD_D16__GPIO_1_16
> -						MX28_PAD_LCD_D17__GPIO_1_17
> -						MX28_PAD_LCD_D18__GPIO_1_18
> -						MX28_PAD_LCD_D19__GPIO_1_19
> -						MX28_PAD_LCD_D20__GPIO_1_20
> -						MX28_PAD_LCD_D21__GPIO_1_21
> -						MX28_PAD_LCD_D22__GPIO_1_22
> -						MX28_PAD_GPMI_CE1N__GPIO_0_17
> -					>;
> -					fsl,drive-strength = <MXS_DRIVE_4mA>;
> -					fsl,voltage = <MXS_VOLTAGE_HIGH>;
> -					fsl,pull-up = <MXS_PULL_DISABLE>;
> -				};
> -
> -				lcdif_pins_apf28dev: lcdif-apf28dev@0 {
> -					reg = <0>;
> -					fsl,pinmux-ids = <
> -						MX28_PAD_LCD_RD_E__LCD_VSYNC
> -						MX28_PAD_LCD_WR_RWN__LCD_HSYNC
> -						MX28_PAD_LCD_RS__LCD_DOTCLK
> -						MX28_PAD_LCD_CS__LCD_ENABLE
> -					>;
> -					fsl,drive-strength = <MXS_DRIVE_4mA>;
> -					fsl,voltage = <MXS_VOLTAGE_HIGH>;
> -					fsl,pull-up = <MXS_PULL_DISABLE>;
> -				};
> -
> -				usb0_otg_apf28dev: otg-apf28dev@0 {
> -					reg = <0>;
> -					fsl,pinmux-ids = <
> -						MX28_PAD_LCD_D23__GPIO_1_23
> -					>;
> -					fsl,drive-strength = <MXS_DRIVE_4mA>;
> -					fsl,voltage = <MXS_VOLTAGE_HIGH>;
> -					fsl,pull-up = <MXS_PULL_DISABLE>;
> -				};
> -			};
> -
> -			lcdif@80030000 {
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&lcdif_16bit_pins_a
> -						&lcdif_pins_apf28dev>;
> -				display = <&display0>;
> -				status = "okay";
> -
> -				display0: display0 {
> -					bits-per-pixel = <16>;
> -					bus-width = <16>;
> -
> -					display-timings {
> -						native-mode = <&timing0>;
> -						timing0: timing0 {
> -							clock-frequency = <33000033>;
> -							hactive = <800>;
> -							vactive = <480>;
> -							hback-porch = <96>;
> -							hfront-porch = <96>;
> -							vback-porch = <20>;
> -							vfront-porch = <21>;
> -							hsync-len = <64>;
> -							vsync-len = <4>;
> -							hsync-active = <1>;
> -							vsync-active = <1>;
> -							de-active = <1>;
> -							pixelclk-active = <0>;
> -						};
> -					};
> -				};
> -			};
> -
> -			can0: can@80032000 {
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&can0_pins_a>;
> -				xceiver-supply = <&reg_can0_vcc>;
> -				status = "okay";
> -			};
> -		};
> -
> -		apbx@80040000 {
> -			lradc@80050000 {
> -				fsl,lradc-touchscreen-wires = <4>;
> -				status = "okay";
> -			};
> -
> -			i2c0: i2c@80058000 {
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&i2c0_pins_a>;
> -				status = "okay";
> -			};
> -
> -			pwm: pwm@80064000 {
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&pwm3_pins_a &pwm4_pins_a>;
> -				status = "okay";
> -			};
> -
> -			auart0: serial@8006a000 {
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&auart0_pins_a>;
> -				uart-has-rtscts;
> -				status = "okay";
> -			};
> -
> -			usbphy0: usbphy@8007c000 {
> -				status = "okay";
> -			};
> -
> -			usbphy1: usbphy@8007e000 {
> -				status = "okay";
> -			};
> -		};
> -	};
> -
> -	ahb@80080000 {
> -		usb0: usb@80080000 {
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&usb0_otg_apf28dev
> -					&usb0_id_pins_b>;
> -			vbus-supply = <&reg_usb0_vbus>;
> -			status = "okay";
> -		};
> -
> -		usb1: usb@80090000 {
> -			status = "okay";
> -		};
> -
> -		mac1: ethernet@800f4000 {
> -			phy-mode = "rmii";
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&mac1_pins_a>;
> -			phy-reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
> -			status = "okay";
> -		};
> -	};
> -
>   	regulators {
>   		compatible = "simple-bus";
>   		#address-cells = <1>;
> @@ -223,3 +63,155 @@ user-button {
>   		};
>   	};
>   };
> +
> +&auart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&auart0_pins_a>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&can0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&can0_pins_a>;
> +	xceiver-supply = <&reg_can0_vcc>;
> +	status = "okay";
> +};
> +
> +&lcdif {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&lcdif_16bit_pins_a
> +			&lcdif_pins_apf28dev>;
> +	display = <&display0>;
> +	status = "okay";
> +
> +	display0: display0 {
> +		bits-per-pixel = <16>;
> +		bus-width = <16>;
> +
> +		display-timings {
> +			native-mode = <&timing0>;
> +			timing0: timing0 {
> +				clock-frequency = <33000033>;
> +				hactive = <800>;
> +				vactive = <480>;
> +				hback-porch = <96>;
> +				hfront-porch = <96>;
> +				vback-porch = <20>;
> +				vfront-porch = <21>;
> +				hsync-len = <64>;
> +				vsync-len = <4>;
> +				hsync-active = <1>;
> +				vsync-active = <1>;
> +				de-active = <1>;
> +				pixelclk-active = <0>;
> +			};
> +		};
> +	};
> +};
> +
> +&lradc {
> +	fsl,lradc-touchscreen-wires = <4>;
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0_pins_a>;
> +	status = "okay";
> +};

This i2c0 node should be before the lcdif node to have the nodes in 
alphabetical order.

Regards,

> +
> +&mac1 {
> +	phy-mode = "rmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mac1_pins_a>;
> +	phy-reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&hog_pins_apf28dev>;
> +
> +	hog_pins_apf28dev: hog@0 {
> +		reg = <0>;
> +		fsl,pinmux-ids = <
> +			MX28_PAD_LCD_D16__GPIO_1_16
> +			MX28_PAD_LCD_D17__GPIO_1_17
> +			MX28_PAD_LCD_D18__GPIO_1_18
> +			MX28_PAD_LCD_D19__GPIO_1_19
> +			MX28_PAD_LCD_D20__GPIO_1_20
> +			MX28_PAD_LCD_D21__GPIO_1_21
> +			MX28_PAD_LCD_D22__GPIO_1_22
> +			MX28_PAD_GPMI_CE1N__GPIO_0_17
> +		>;
> +		fsl,drive-strength = <MXS_DRIVE_4mA>;
> +		fsl,voltage = <MXS_VOLTAGE_HIGH>;
> +		fsl,pull-up = <MXS_PULL_DISABLE>;
> +	};
> +
> +	lcdif_pins_apf28dev: lcdif-apf28dev@0 {
> +		reg = <0>;
> +		fsl,pinmux-ids = <
> +			MX28_PAD_LCD_RD_E__LCD_VSYNC
> +			MX28_PAD_LCD_WR_RWN__LCD_HSYNC
> +			MX28_PAD_LCD_RS__LCD_DOTCLK
> +			MX28_PAD_LCD_CS__LCD_ENABLE
> +		>;
> +		fsl,drive-strength = <MXS_DRIVE_4mA>;
> +		fsl,voltage = <MXS_VOLTAGE_HIGH>;
> +		fsl,pull-up = <MXS_PULL_DISABLE>;
> +	};
> +
> +	usb0_otg_apf28dev: otg-apf28dev@0 {
> +		reg = <0>;
> +		fsl,pinmux-ids = <
> +			MX28_PAD_LCD_D23__GPIO_1_23
> +		>;
> +		fsl,drive-strength = <MXS_DRIVE_4mA>;
> +		fsl,voltage = <MXS_VOLTAGE_HIGH>;
> +		fsl,pull-up = <MXS_PULL_DISABLE>;
> +	};
> +};

The pinctrl node is usually placed at the end of the file.

Thank you !

Regards,

> +
> +&pwm {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm3_pins_a &pwm4_pins_a>;
> +	status = "okay";
> +};
> +
> +&ssp0 {
> +	compatible = "fsl,imx28-mmc";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc0_4bit_pins_a
> +		&mmc0_cd_cfg &mmc0_sck_cfg>;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&ssp2 {
> +	compatible = "fsl,imx28-spi";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi2_pins_a>;
> +	status = "okay";
> +};
> +
> +&usb0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&usb0_otg_apf28dev
> +			&usb0_id_pins_b>;
> +	vbus-supply = <&reg_usb0_vbus>;
> +	status = "okay";
> +};
> +
> +&usb1 {
> +	status = "okay";
> +};
> +
> +&usbphy0 {
> +	status = "okay";
> +};
> +
> +&usbphy1 {
> +	status = "okay";
> +};

-- 
Sébastien Szymanski, Armadeus Systems
Software engineer

