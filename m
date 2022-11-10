Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D78E624868
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 18:34:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbiKJReG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 12:34:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiKJReG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 12:34:06 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CC2A19296
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 09:34:03 -0800 (PST)
Received: from [192.168.1.139] ([37.4.248.71]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mekzb-1pR8eZ27Yz-00apLV; Thu, 10 Nov 2022 18:28:14 +0100
Message-ID: <98605cab-3c5a-a3f9-5326-f3c0afb68277@i2se.com>
Date:   Thu, 10 Nov 2022 18:28:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH V2 2/2] ARM: dts: bcm283x: Move ACT LED into separate dtsi
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        Alexander Dahl <ada@thorsis.com>
References: <20221110172422.6263-1-stefan.wahren@i2se.com>
 <20221110172422.6263-3-stefan.wahren@i2se.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20221110172422.6263-3-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:wes8aDvi96NBIX2bOjKYyKpbLrLX2Hsz5hwY7pWh7AdjoIJVb+0
 UAbS8SEnne2vrakm0CkHqrOeqP1WHJGiceiy0Q08gl0f9WcEleAOU6Y5BC/GF8Fcp8LXThx
 o7yEuP4Hc+k7DiIKAjyWZazcmdha0+2NJ7NshObOJhYsKKx6VSh4qJM64zO2x48LaizyIPJ
 WfFt7lVMWG6RaOrSivq5A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:MTH71T/A3Lo=:b+kyAUHXkhpnRDv0JGEdrw
 ntvFepktbjzIdf+6YkGk82CaZ+d5PBkMczkjcRioto60PT9Wc9BU8csGYzWtWwyUR7lJB5Sz6
 CpL6ijZ6byHY8+h3jh0uCObxwINGs86ixrpOGVZWeTKghAwlTfjQa4mCl4vaES67nq5tvLs9E
 aiz36m+URg4y0AEbwYL1jBg4Ul7zcdckwmngYZbCjN/X8RLpRpeOVj/F29cnrPj3K8n6qTqQG
 niao+XttgIVFkG/dSnFaThglmyb+GaA2QGoxnEbDL3l/xnZKEpkKzT4ewtwGJFObIQQ6nGC2u
 TmxX1wlgfcEjsbrDPDjj8YU9lqtnr3TV0i2Czv4Cm862ogSGO3zC+GAiG2gYWavob+eUu3280
 KKKGkLiaqQOtibcD4VJnGiHBrfYI0UE7ZNsddMtaN/9yzkkUYxZMa+IbbsxU81y23l9utFit9
 2CYeW37b8TgiRJXG6/T1hGe7HvO4P8uRXWKEBi9DPEyj6BZ+c0ELdz/tGqmKadgfjEGXvnSKb
 T4XK+MrL9XV8f0geUnJgSwQFuFfNcv+OwHw+oPRoW+3EFvmZIJ2rpZfsKM9LJjqytLN0YUk/J
 luwtL2gHBFqk/fLfk0ERIo2wtfi0Bh/AkGGNkMynNgLQnUWMtJPaJUJSHy6Ua9R8rhIQ0K4Gi
 ICSu72nI2VAxthn7usbvd4WsNw6JNz8dFj4+JUIn9TXzEvkCGEET7/VAaV+BZgeXgKoONs5bj
 uLJQNCS/MMBopRuy+I0nLMTrN+venIbdRa3CHKYBaET7aOPI990BHZ+7crrONjEyiu3gVCEAM
 0w8lTxRvXWK4fuV+NPTOe8H7psiSBf9vIOw43Va5bcJIhNFO5/IZcHQMXuUwn8Cf0/XpG8xhD
 tw64l3R1GSNZAdEyko/LN/tOHGY2qy4uFefW2wpk6mRXBiSuyqGUQdg39aApwb58+mOUf8YlB
 RS/BuW2LkDdw9Q4C/MhYmFpKXnnj9lbM/nva57li3EnjnKSJgaAk9YWY0f8rSD4cm4G9j3abO
 EMEs3itPhkGCJFKhjNcCEugEIZ/Yme/9MYlXg9OU8sKoAfI65NAA0mdvH1DCyStM1hQcfgLmn
 Q0ehSktGjf2KSmjC778sTwuzz+1U4oTbAy2Zd739VQNeP/a7YWmdslhAg7UCpo764RpwG58sb
 n2GGg+D1+r/2i5RzOES0hC08d1GmnuWavnpo5vZ/osE8Ezvo57Rwku7vT+r3j79/j0AP8/DpR
 1Rr8q2WWWbstJ5O2VF+Xor0c5AlAlgZS9Zqx2lh2XCWUViqr0mKX/+IRpkodgg7v4cN61OD02
 SsoKsV9n2VzYWNntGQEE0/n1SztVDg==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 10.11.22 um 18:24 schrieb Stefan Wahren:
> From: Stefan Wahren <stefan.wahren@chargebyte.com>
>
> The usage of the label property for gpio-leds has been deprecated
> a long time ago. In bcm2835-rpi.dtsi the ACT LED uses such a label
> and derive it to almost every Raspberry Pi board. Since we cannot break
> userspace interface this property must be kept. But we can move the
> ACT LED into a separate dtsi and include them from the board files.
>
> This change have two benefits:
> - with both new refs it's now clear the LED part is included from a dtsi
> - new boards do not include the deprecated stuff automatically
>
> Reported-by: Alexander Dahl <ada@thorsis.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Please ignore this has been send with the wrong git settings. Sorry 
about this.
> ---
>   arch/arm/boot/dts/bcm2711-rpi-4-b.dts         | 27 ++++++++++---------
>   arch/arm/boot/dts/bcm2711-rpi-400.dts         | 16 +++++------
>   arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts      | 27 ++++++++++---------
>   arch/arm/boot/dts/bcm2835-rpi-a-plus.dts      | 27 ++++++++++---------
>   arch/arm/boot/dts/bcm2835-rpi-a.dts           | 11 ++++----
>   arch/arm/boot/dts/bcm2835-rpi-b-plus.dts      | 27 ++++++++++---------
>   arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts      | 11 ++++----
>   arch/arm/boot/dts/bcm2835-rpi-b.dts           | 11 ++++----
>   arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi        |  5 ++++
>   arch/arm/boot/dts/bcm2835-rpi-zero-w.dts      | 11 ++++----
>   arch/arm/boot/dts/bcm2835-rpi-zero.dts        | 11 ++++----
>   arch/arm/boot/dts/bcm2835-rpi.dtsi            | 10 -------
>   arch/arm/boot/dts/bcm2836-rpi-2-b.dts         | 27 ++++++++++---------
>   arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts    | 27 ++++++++++---------
>   arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts    | 27 ++++++++++---------
>   arch/arm/boot/dts/bcm2837-rpi-3-b.dts         | 11 ++++----
>   arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi        |  8 ------
>   arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts    | 11 ++++----
>   .../boot/dts/bcm283x-rpi-led-deprecated.dtsi  | 18 +++++++++++++
>   19 files changed, 164 insertions(+), 159 deletions(-)
>   create mode 100644 arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi
>
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> index aaad9b7ec630..d5f8823230db 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> @@ -2,6 +2,7 @@
>   /dts-v1/;
>   #include "bcm2711.dtsi"
>   #include "bcm2711-rpi.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-usb-peripheral.dtsi"
>   #include "bcm283x-rpi-wifi-bt.dtsi"
>   
> @@ -14,19 +15,6 @@ chosen {
>   		stdout-path = "serial1:115200n8";
>   	};
>   
> -	leds {
> -		led-act {
> -			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
> -		};
> -
> -		led-pwr {
> -			label = "PWR";
> -			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> -			default-state = "keep";
> -			linux,default-trigger = "default-on";
> -		};
> -	};
> -
>   	sd_io_1v8_reg: regulator-sd-io-1v8 {
>   		compatible = "regulator-gpio";
>   		regulator-name = "vdd-sd-io";
> @@ -156,6 +144,19 @@ &hdmi1 {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&leds {
> +	led_pwr: led-pwr {
> +		label = "PWR";
> +		gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> +		default-state = "keep";
> +		linux,default-trigger = "default-on";
> +	};
> +};
> +
>   &pixelvalve0 {
>   	status = "okay";
>   };
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-400.dts b/arch/arm/boot/dts/bcm2711-rpi-400.dts
> index c53d9eb0b802..1ab8184302db 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-400.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-400.dts
> @@ -11,14 +11,6 @@ chosen {
>   		stdout-path = "serial1:115200n8";
>   	};
>   
> -	leds {
> -		/delete-node/ led-act;
> -
> -		led-pwr {
> -			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
> -		};
> -	};
> -
>   	gpio-poweroff {
>   		compatible = "gpio-poweroff";
>   		gpios = <&expgpio 5 GPIO_ACTIVE_HIGH>;
> @@ -40,6 +32,14 @@ &genet_mdio {
>   	clock-frequency = <1950000>;
>   };
>   
> +&led_pwr {
> +	gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&leds {
> +	/delete-node/ led_act;
> +};
> +
>   &pm {
>   	/delete-property/ system-power-controller;
>   };
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
> index 19600b629be5..d7ba02f586d3 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
> @@ -1,23 +1,11 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /dts-v1/;
>   #include "bcm2711-rpi-cm4.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   
>   / {
>   	model = "Raspberry Pi Compute Module 4 IO Board";
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
> -		};
> -
> -		led-pwr {
> -			label = "PWR";
> -			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> -			default-state = "keep";
> -			linux,default-trigger = "default-on";
> -		};
> -	};
>   };
>   
>   &ddc0 {
> @@ -113,6 +101,19 @@ &genet {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&leds {
> +	led-pwr {
> +		label = "PWR";
> +		gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> +		default-state = "keep";
> +		linux,default-trigger = "default-on";
> +	};
> +};
> +
>   &pixelvalve0 {
>   	status = "okay";
>   };
> diff --git a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
> index 1470d2049f74..02ce817868ba 100644
> --- a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
> +++ b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
> @@ -3,6 +3,7 @@
>   #include "bcm2835.dtsi"
>   #include "bcm2835-rpi.dtsi"
>   #include "bcm2835-rpi-common.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   
>   / {
> @@ -13,19 +14,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x10000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
> -		};
> -
> -		led-pwr {
> -			label = "PWR";
> -			gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
> -			default-state = "keep";
> -			linux,default-trigger = "default-on";
> -		};
> -	};
>   };
>   
>   &gpio {
> @@ -108,6 +96,19 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&leds {
> +	led-pwr {
> +		label = "PWR";
> +		gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
> +		default-state = "keep";
> +		linux,default-trigger = "default-on";
> +	};
> +};
> +
>   &pwm {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
> diff --git a/arch/arm/boot/dts/bcm2835-rpi-a.dts b/arch/arm/boot/dts/bcm2835-rpi-a.dts
> index 89be496f84f8..3fdf60eb11dc 100644
> --- a/arch/arm/boot/dts/bcm2835-rpi-a.dts
> +++ b/arch/arm/boot/dts/bcm2835-rpi-a.dts
> @@ -3,6 +3,7 @@
>   #include "bcm2835.dtsi"
>   #include "bcm2835-rpi.dtsi"
>   #include "bcm2835-rpi-common.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   
>   / {
> @@ -13,12 +14,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x10000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
> -		};
> -	};
>   };
>   
>   &gpio {
> @@ -103,6 +98,10 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
> +};
> +
>   &pwm {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
> diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
> index 7f653f11788d..9956fd06a4b6 100644
> --- a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
> +++ b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
> @@ -3,6 +3,7 @@
>   #include "bcm2835.dtsi"
>   #include "bcm2835-rpi.dtsi"
>   #include "bcm2835-rpi-common.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-smsc9514.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   
> @@ -14,19 +15,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x20000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
> -		};
> -
> -		led-pwr {
> -			label = "PWR";
> -			gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
> -			default-state = "keep";
> -			linux,default-trigger = "default-on";
> -		};
> -	};
>   };
>   
>   &gpio {
> @@ -110,6 +98,19 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&leds {
> +	led-pwr {
> +		label = "PWR";
> +		gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
> +		default-state = "keep";
> +		linux,default-trigger = "default-on";
> +	};
> +};
> +
>   &pwm {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
> diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
> index 55e7cb0a242f..4e1770afb145 100644
> --- a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
> +++ b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
> @@ -3,6 +3,7 @@
>   #include "bcm2835.dtsi"
>   #include "bcm2835-rpi.dtsi"
>   #include "bcm2835-rpi-common.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-smsc9512.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   
> @@ -14,12 +15,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x10000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
> -		};
> -	};
>   };
>   
>   &gpio {
> @@ -103,6 +98,10 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
> +};
> +
>   &pwm {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
> diff --git a/arch/arm/boot/dts/bcm2835-rpi-b.dts b/arch/arm/boot/dts/bcm2835-rpi-b.dts
> index 3020c42ea8d7..eec1d0892d33 100644
> --- a/arch/arm/boot/dts/bcm2835-rpi-b.dts
> +++ b/arch/arm/boot/dts/bcm2835-rpi-b.dts
> @@ -3,6 +3,7 @@
>   #include "bcm2835.dtsi"
>   #include "bcm2835-rpi.dtsi"
>   #include "bcm2835-rpi-common.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-smsc9512.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   
> @@ -14,12 +15,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x10000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
> -		};
> -	};
>   };
>   
>   &gpio {
> @@ -97,6 +92,10 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
> +};
> +
>   &pwm {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
> diff --git a/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi b/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
> index f71d7e9e5895..750cd76948e3 100644
> --- a/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
> +++ b/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
> @@ -3,6 +3,7 @@
>   #include "bcm2835.dtsi"
>   #include "bcm2835-rpi.dtsi"
>   #include "bcm2835-rpi-common.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   
>   / {
>   	leds {
> @@ -33,6 +34,10 @@ reg_1v8: fixed-regulator {
>   	};
>   };
>   
> +&led_act {
> +	gpios = <&gpio 47 GPIO_ACTIVE_LOW>;
> +};
> +
>   &sdhost {
>   	non-removable;
>   	vmmc-supply = <&reg_3v3>;
> diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
> index 9b3a2070a629..dbf825985ec0 100644
> --- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
> +++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
> @@ -7,6 +7,7 @@
>   #include "bcm2835.dtsi"
>   #include "bcm2835-rpi.dtsi"
>   #include "bcm2835-rpi-common.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-usb-otg.dtsi"
>   #include "bcm283x-rpi-wifi-bt.dtsi"
>   
> @@ -23,12 +24,6 @@ chosen {
>   		/* 8250 auxiliary UART instead of pl011 */
>   		stdout-path = "serial1:115200n8";
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 47 GPIO_ACTIVE_LOW>;
> -		};
> -	};
>   };
>   
>   &bt {
> @@ -111,6 +106,10 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 47 GPIO_ACTIVE_LOW>;
> +};
> +
>   &sdhci {
>   	pinctrl-0 = <&emmc_gpio34 &gpclk2_gpio43>;
>   };
> diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero.dts b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
> index f9359ac2bb92..f80e65a825fd 100644
> --- a/arch/arm/boot/dts/bcm2835-rpi-zero.dts
> +++ b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
> @@ -7,6 +7,7 @@
>   #include "bcm2835.dtsi"
>   #include "bcm2835-rpi.dtsi"
>   #include "bcm2835-rpi-common.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-usb-otg.dtsi"
>   
>   / {
> @@ -17,12 +18,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x20000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
> -		};
> -	};
>   };
>   
>   &gpio {
> @@ -105,6 +100,10 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
> +};
> +
>   &sdhost {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&sdhost_gpio48>;
> diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
> index 87ddcad76083..ee9ee9d1fe65 100644
> --- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
> +++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
> @@ -1,16 +1,6 @@
>   #include <dt-bindings/power/raspberrypi-power.h>
>   
>   / {
> -	leds {
> -		compatible = "gpio-leds";
> -
> -		led-act {
> -			label = "ACT";
> -			default-state = "keep";
> -			linux,default-trigger = "heartbeat";
> -		};
> -	};
> -
>   	soc {
>   		firmware: firmware {
>   			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
> diff --git a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
> index 3635502b1e0a..6068ec390081 100644
> --- a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
> +++ b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
> @@ -2,6 +2,7 @@
>   /dts-v1/;
>   #include "bcm2836.dtsi"
>   #include "bcm2836-rpi.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-smsc9514.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   
> @@ -13,19 +14,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x40000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
> -		};
> -
> -		led-pwr {
> -			label = "PWR";
> -			gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
> -			default-state = "keep";
> -			linux,default-trigger = "default-on";
> -		};
> -	};
>   };
>   
>   &gpio {
> @@ -109,6 +97,19 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&leds {
> +	led-pwr {
> +		label = "PWR";
> +		gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
> +		default-state = "keep";
> +		linux,default-trigger = "default-on";
> +	};
> +};
> +
>   &pwm {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio45>;
> diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
> index f7222a28903e..3548306dfbcb 100644
> --- a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
> +++ b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
> @@ -2,6 +2,7 @@
>   /dts-v1/;
>   #include "bcm2837.dtsi"
>   #include "bcm2836-rpi.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   #include "bcm283x-rpi-wifi-bt.dtsi"
>   
> @@ -18,19 +19,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x20000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 29 GPIO_ACTIVE_HIGH>;
> -		};
> -
> -		led-pwr {
> -			label = "PWR";
> -			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> -			default-state = "keep";
> -			linux,default-trigger = "default-on";
> -		};
> -	};
>   };
>   
>   &firmware {
> @@ -124,6 +112,19 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 29 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&leds {
> +	led-pwr {
> +		label = "PWR";
> +		gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> +		default-state = "keep";
> +		linux,default-trigger = "default-on";
> +	};
> +};
> +
>   &pwm {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio41>;
> diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
> index ec721d323ac5..2f1800cbc522 100644
> --- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
> +++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
> @@ -3,6 +3,7 @@
>   #include "bcm2837.dtsi"
>   #include "bcm2836-rpi.dtsi"
>   #include "bcm283x-rpi-lan7515.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   #include "bcm283x-rpi-wifi-bt.dtsi"
>   
> @@ -19,19 +20,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x40000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 29 GPIO_ACTIVE_HIGH>;
> -		};
> -
> -		led-pwr {
> -			label = "PWR";
> -			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> -			default-state = "keep";
> -			linux,default-trigger = "default-on";
> -		};
> -	};
>   };
>   
>   &bt {
> @@ -130,6 +118,19 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 29 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&leds {
> +	led-pwr {
> +		label = "PWR";
> +		gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
> +		default-state = "keep";
> +		linux,default-trigger = "default-on";
> +	};
> +};
> +
>   &pwm {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pwm0_gpio40 &pwm1_gpio41>;
> diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
> index fb6a417d73e7..61270340075c 100644
> --- a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
> +++ b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
> @@ -2,6 +2,7 @@
>   /dts-v1/;
>   #include "bcm2837.dtsi"
>   #include "bcm2836-rpi.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-smsc9514.dtsi"
>   #include "bcm283x-rpi-usb-host.dtsi"
>   #include "bcm283x-rpi-wifi-bt.dtsi"
> @@ -19,12 +20,6 @@ memory@0 {
>   		device_type = "memory";
>   		reg = <0 0x40000000>;
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&expgpio 2 GPIO_ACTIVE_HIGH>;
> -		};
> -	};
>   };
>   
>   &bt {
> @@ -129,6 +124,10 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&expgpio 2 GPIO_ACTIVE_HIGH>;
> +};
> +
>   /* uart0 communicates with the BT module */
>   &uart0 {
>   	pinctrl-names = "default";
> diff --git a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
> index f57b4ca145dd..1e4e4946b6b6 100644
> --- a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
> +++ b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
> @@ -9,14 +9,6 @@ memory@0 {
>   		reg = <0 0x40000000>;
>   	};
>   
> -	leds {
> -		/*
> -		 * Since there is no upstream GPIO driver yet,
> -		 * remove the incomplete node.
> -		 */
> -		/delete-node/ led-act;
> -	};
> -
>   	reg_3v3: fixed-regulator {
>   		compatible = "regulator-fixed";
>   		regulator-name = "3V3";
> diff --git a/arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts b/arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts
> index 4a768562985e..b9cc4594398b 100644
> --- a/arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts
> +++ b/arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts
> @@ -6,6 +6,7 @@
>   /dts-v1/;
>   #include "bcm2837.dtsi"
>   #include "bcm2836-rpi.dtsi"
> +#include "bcm283x-rpi-led-deprecated.dtsi"
>   #include "bcm283x-rpi-usb-otg.dtsi"
>   #include "bcm283x-rpi-wifi-bt.dtsi"
>   
> @@ -22,12 +23,6 @@ chosen {
>   		/* 8250 auxiliary UART instead of pl011 */
>   		stdout-path = "serial1:115200n8";
>   	};
> -
> -	leds {
> -		led-act {
> -			gpios = <&gpio 29 GPIO_ACTIVE_LOW>;
> -		};
> -	};
>   };
>   
>   &bt {
> @@ -109,6 +104,10 @@ &hdmi {
>   	status = "okay";
>   };
>   
> +&led_act {
> +	gpios = <&gpio 29 GPIO_ACTIVE_LOW>;
> +};
> +
>   &sdhci {
>   	pinctrl-0 = <&emmc_gpio34 &gpclk2_gpio43>;
>   };
> diff --git a/arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi b/arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi
> new file mode 100644
> index 000000000000..f83e56de1a72
> --- /dev/null
> +++ b/arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/ {
> +	/*
> +	 * This file provides the now deprecated ACT LED to the
> +	 * Raspberry Pi boards. Please don't include this file
> +	 * for new boards!
> +	 */
> +	leds: leds {
> +		compatible = "gpio-leds";
> +
> +		led_act: led-act {
> +			label = "ACT";
> +			default-state = "keep";
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +};
