Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3FFE87D78F
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 10:27:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728902AbfHAI1V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 04:27:21 -0400
Received: from esa2.microchip.iphmx.com ([68.232.149.84]:16385 "EHLO
        esa2.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727854AbfHAI1V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 04:27:21 -0400
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
  Ludovic.Desroches@microchip.com designates 198.175.253.82 as
  permitted sender) identity=mailfrom;
  client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
  envelope-from="Ludovic.Desroches@microchip.com";
  x-sender="Ludovic.Desroches@microchip.com";
  x-conformance=spf_only; x-record-type="v=spf1";
  x-record-text="v=spf1 mx a:ushub1.microchip.com
  a:smtpout.microchip.com a:mx1.microchip.iphmx.com
  a:mx2.microchip.iphmx.com include:servers.mcsv.net
  include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@email.microchip.com) identity=helo;
  client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
  envelope-from="Ludovic.Desroches@microchip.com";
  x-sender="postmaster@email.microchip.com";
  x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com; spf=None smtp.helo=postmaster@email.microchip.com; dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: YbJbvlmgHY2SQjHpI/xtOAbbnILA1q7h0y28i/zs0EM2xsJ8HmcVyznZlIXBQu+u9Y8jJApEae
 Toycc4a/eh5xcJSAFPblbPqE9RYAs6728kMphf9DjItEuUJPH3GreIPGAfD/fDYM0iLMm9yzJT
 goW2eWeuHcTx2CC64Yq1WIYW9OXNmQX3lNMzhs2NvLDnT9EVP8o9hbJNDBAeAJikV3VSA/9Oht
 ag2ae6lIkJvJhm5YIoJhYtlYv0jIaPv8yUYryMzwZkKJbJX883c6XE8hKyKG3iKO/D4msK2KSm
 0xk=
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; 
   d="scan'208";a="43540288"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 01 Aug 2019 01:27:20 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 01:27:19 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 1 Aug 2019 01:27:19 -0700
Date:   Thu, 1 Aug 2019 10:26:23 +0200
From:   Ludovic Desroches <ludovic.desroches@microchip.com>
To:     Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
CC:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] at91/dt: ariettag25: style cleanup
Message-ID: <20190801082622.hma5ejifj6i2a2jv@M43218.corp.atmel.com>
Mail-Followup-To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20190731220045.3992-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190731220045.3992-1-uwe@kleine-koenig.org>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 01, 2019 at 12:00:45AM +0200, Uwe Kleine-König wrote:
> External E-Mail
> 
> 
> - newline between properties and sub-nodes
> - use tags from included dtsi instead of duplicating the hierarchy
> - status should be the last property
> - drop duplicated alias
> 
> There are no differences in the generated .dtb
> 
> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
> Hello,
> 
> these are the style rules I was teached when modifying imx dts files.
> Do they apply to at91, too?

Hello Uwe,

It's okay for me, we had no guidelines at the beginning, that explain
some inconsistency among our dt files. We tend to follow these rules
excepted the use of labels.

I would like to be sure that Nicolas and Alexandre are on the same
wavelength than me.

Regards

Ludovic

> 
> Best regards
> Uwe
> 
>  arch/arm/boot/dts/at91-ariettag25.dts | 87 +++++++++++++--------------
>  1 file changed, 43 insertions(+), 44 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/at91-ariettag25.dts b/arch/arm/boot/dts/at91-ariettag25.dts
> index 7a34c4dc05d2..8f9f5a22cbf6 100644
> --- a/arch/arm/boot/dts/at91-ariettag25.dts
> +++ b/arch/arm/boot/dts/at91-ariettag25.dts
> @@ -6,14 +6,11 @@
>   */
>  /dts-v1/;
>  #include "at91sam9g25.dtsi"
> +
>  / {
>  	model = "Acme Systems Arietta G25";
>  	compatible = "acme,ariettag25", "atmel,at91sam9x5", "atmel,at91sam9";
>  
> -	aliases {
> -		serial0 = &dbgu;
> -	};
> -
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> @@ -34,55 +31,16 @@
>  
>  	ahb {
>  		apb {
> -			mmc0: mmc@f0008000 {
> -				pinctrl-0 = <
> -				  &pinctrl_mmc0_slot0_clk_cmd_dat0
> -				  &pinctrl_mmc0_slot0_dat1_3>;
> -				status = "okay";
> -
> -				slot@0 {
> -					reg = <0>;
> -					bus-width = <4>;
> -				};
> -			};
> -
> -			tcb0: timer@f8008000 {
> -				timer@0 {
> -					compatible = "atmel,tcb-timer";
> -					reg = <0>;
> -				};
> -
> -				timer@1 {
> -					compatible = "atmel,tcb-timer";
> -					reg = <1>;
> -				};
> -			};
> -
> -			usb2: gadget@f803c000 {
> -				status = "okay";
> -			};
> -
> -			dbgu: serial@fffff200 {
> -				status = "okay";
> -			};
> -
>  			rtc@fffffeb0 {
>  				status = "okay";
>  			};
>  		};
>  
> -		usb0: ohci@600000 {
> -			status = "okay";
> -			num-ports = <3>;
> -		};
> -
> -		usb1: ehci@700000 {
> -			status = "okay";
> -		};
>  	};
>  
>  	leds {
>  		compatible = "gpio-leds";
> +
>  		arietta_led {
>  			label = "arietta_led";
>  			gpios = <&pioB 8 GPIO_ACTIVE_HIGH>; /* PB8 */
> @@ -90,3 +48,44 @@
>  		};
>  	};
>  };
> +
> +&dbgu {
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	pinctrl-0 = <
> +		&pinctrl_mmc0_slot0_clk_cmd_dat0
> +		&pinctrl_mmc0_slot0_dat1_3>;
> +	status = "okay";
> +
> +	slot@0 {
> +		reg = <0>;
> +		bus-width = <4>;
> +	};
> +};
> +
> +&tcb0 {
> +	timer@0 {
> +		compatible = "atmel,tcb-timer";
> +		reg = <0>;
> +	};
> +
> +	timer@1 {
> +		compatible = "atmel,tcb-timer";
> +		reg = <1>;
> +	};
> +};
> +
> +&usb0 {
> +	num-ports = <3>;
> +	status = "okay";
> +};
> +
> +&usb1 {
> +	status = "okay";
> +};
> +
> +&usb2 {
> +	status = "okay";
> +};
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
