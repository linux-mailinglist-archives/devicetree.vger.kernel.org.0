Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8B7907C329
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 15:19:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726859AbfGaNTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 09:19:42 -0400
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:65463 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726339AbfGaNTm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 09:19:42 -0400
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
  Ludovic.Desroches@microchip.com designates 198.175.253.82 as
  permitted sender) identity=mailfrom;
  client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
  envelope-from="Ludovic.Desroches@microchip.com";
  x-sender="Ludovic.Desroches@microchip.com";
  x-conformance=spf_only; x-record-type="v=spf1";
  x-record-text="v=spf1 mx a:ushub1.microchip.com
  a:smtpout.microchip.com a:mx1.microchip.iphmx.com
  a:mx2.microchip.iphmx.com include:servers.mcsv.net
  include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@email.microchip.com) identity=helo;
  client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
  envelope-from="Ludovic.Desroches@microchip.com";
  x-sender="postmaster@email.microchip.com";
  x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com; spf=None smtp.helo=postmaster@email.microchip.com; dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: BOwPyBdp7t0RiZBw5FHJUNlbvR5H0PUELcwVzXHqUd1zyd5AjwBMf02qY/FT0PsbtSxWxz71vZ
 NVKeyaKZt9KdNnL21D4Jm73se5MWZNcYCpZiB64xbI0NYlGwTTE+wu2PafaGqZ/jn/yfsG6cn4
 JFVRutBeldNuaeEG3HgDFBfuy5taa6VyeQPbCF+B0DeL2UYwX+yrIbTMf++FF5Svchic1H4Qll
 2K6bZtleRt67yDQ7GjmnnCWvmduLmzMfw8dgljMQt50Iee13y6m3FkFenlXZxvQ1NXHJsTmJNG
 C0w=
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; 
   d="scan'208";a="40428608"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 31 Jul 2019 06:19:41 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 06:19:39 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 06:19:39 -0700
Date:   Wed, 31 Jul 2019 15:18:44 +0200
From:   Ludovic Desroches <ludovic.desroches@microchip.com>
To:     Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <info@acmesystems.it>
Subject: Re: [PATCH 2/2] ARM: dts: at91: add support for Arietta G25
Message-ID: <20190731131844.avi5zlwkgu7f2her@M43218.corp.atmel.com>
Mail-Followup-To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        info@acmesystems.it
References: <20190728210403.2730-1-uwe@kleine-koenig.org>
 <20190728210403.2730-3-uwe@kleine-koenig.org>
 <20190731113648.kyktpnk3exly57fw@M43218.corp.atmel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190731113648.kyktpnk3exly57fw@M43218.corp.atmel.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 31, 2019 at 01:36:49PM +0200, Ludovic Desroches wrote:
> On Sun, Jul 28, 2019 at 11:04:03PM +0200, Uwe Kleine-König wrote:
> > 
> > The Arietta G25 is a SBC powered by a AT91SAMG25 running at 400 MHz.
> > See https://www.acmesystems.it/arietta for more details.
> > 
> > Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

I should have double checked before, I had in mind that we support this
board in our bootloader but it's also the case in the kernel:

arch/arm/boot/dts/at91-ariettag25.dts

Regards

Ludovic

> 
> > ---
> >  arch/arm/boot/dts/at91sam9g25-arietta.dts | 86 +++++++++++++++++++++++
> >  1 file changed, 86 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/at91sam9g25-arietta.dts
> > 
> > diff --git a/arch/arm/boot/dts/at91sam9g25-arietta.dts b/arch/arm/boot/dts/at91sam9g25-arietta.dts
> > new file mode 100644
> > index 000000000000..6c20e02f0ea9
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/at91sam9g25-arietta.dts
> > @@ -0,0 +1,86 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Arietta - System On Module
> > + * https://www.acmesystems.it/arietta
> > + */
> > +
> > +/dts-v1/;
> > +#include "at91sam9g25.dtsi"
> > +
> > +/ {
> > +	model = "Acme Systems Arietta G25";
> > +	compatible = "acme,ariettag25", "atmel,at91sam9x5", "atmel,at91sam9";
> > +
> > +	chosen {
> > +		stdout-path = "serial0:115200n8";
> > +	};
> > +
> > +	memory {
> > +		reg = <0x20000000 0x8000000>;
> > +	};
> > +
> > +	clocks {
> > +		slow_xtal {
> > +			clock-frequency = <32768>;
> > +		};
> > +
> > +		main_xtal {
> > +			clock-frequency = <12000000>;
> > +		};
> > +	};
> > +
> > +	ahb {
> > +		apb {
> > +			rtc@fffffeb0 {
> > +				status = "okay";
> > +			};
> > +		};
> > +	};
> > +
> > +	leds {
> > +		compatible = "gpio-leds";
> > +
> > +		arietta_led {
> > +			label = "arietta_led";
> > +			gpios = <&pioB 8 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger = "heartbeat";
> > +		};
> > +	};
> > +};
> > +
> > +&dbgu {
> > +	status = "okay";
> > +};
> > +
> > +&mmc0 {
> > +	pinctrl-0 = <
> > +		&pinctrl_mmc0_slot0_clk_cmd_dat0
> > +		&pinctrl_mmc0_slot0_dat1_3>;
> > +	status = "okay";
> > +
> > +	slot@0 {
> > +		reg = <0>;
> > +		bus-width = <4>;
> > +	};
> > +};
> > +
> > +&usart0 {
> > +	status ="okay";
> > +};
> > +
> > +&usart1 {
> > +	status ="okay";
> > +};
> > +
> > +&usb0 {
> > +	status = "okay";
> > +	num-ports = <3>;
> > +};
> > +
> > +&usb1 {
> > +	status = "okay";
> > +};
> > +
> > +&usb2 {
> > +	status = "okay";
> > +};
> > -- 
> > 2.20.1
> > 
