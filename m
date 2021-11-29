Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E6DC460BB0
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 01:34:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236980AbhK2Ahm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Nov 2021 19:37:42 -0500
Received: from mail-qv1-f48.google.com ([209.85.219.48]:40886 "EHLO
        mail-qv1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231673AbhK2Afm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Nov 2021 19:35:42 -0500
Received: by mail-qv1-f48.google.com with SMTP id b11so12833842qvm.7
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 16:32:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MyZRAlXP/e/AePu0s+Zwakx21d3S9mVf149IxObIrqI=;
        b=ZHUlmSteOXqE3e4JCzF1mE5cA+1Zua718cOltmIvipOuNXXzaZu/jWrXufC6Mt/fjY
         fllnbe3dPsqQp0iyw+2rdfWM7+QNFxAp6Eb8zzT0wHKSb3rUXp/zSLRrtdgo4pEQMd5t
         uQ3t218k1QbF4vg+GkESQBwZbqNuvO9iaNhsSFtxQ2qjjOuuDm/8h5EsWPQhBOp8//de
         BybMeEzKpKfrKwUSFq5TVXVsAppJ4leW2sxFDDdYorU75lGmQKyUpD9HqE3swQlWEC+r
         jGcxNKYcu++uNJzfqLsdlQ19vtv9LoFUl2cbjwDNduSZQulI5YsbvYKCSNry5s7GSOYS
         waRw==
X-Gm-Message-State: AOAM533BwFydN0TUi6trw+vTGZwnCyP8bvf8dOmQ9t04Up9MHVpwKvld
        60G3HYw+oj5yubUDc08UKQ==
X-Google-Smtp-Source: ABdhPJzHiwW1fPPH4MokDrlAnYt8RfzKC0ldQeYu5/M+OmWm2g8ZSiMwwNcqdJPo0HjtoWNCUZcXsA==
X-Received: by 2002:a05:6214:1d26:: with SMTP id f6mr40719839qvd.19.1638145944847;
        Sun, 28 Nov 2021 16:32:24 -0800 (PST)
Received: from robh.at.kernel.org ([172.58.99.229])
        by smtp.gmail.com with ESMTPSA id t35sm8210564qtc.83.2021.11.28.16.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 16:32:24 -0800 (PST)
Received: (nullmailer pid 2885884 invoked by uid 1000);
        Mon, 29 Nov 2021 00:26:58 -0000
Date:   Sun, 28 Nov 2021 18:26:58 -0600
From:   Rob Herring <robh@kernel.org>
To:     Evgeny Boger <boger@wirenboard.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v3 3/3] dts: r40: add second ethernet support
Message-ID: <YaQeUqF0P6waOcqQ@robh.at.kernel.org>
References: <20211121195337.230475-1-boger@wirenboard.com>
 <20211121195337.230475-4-boger@wirenboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211121195337.230475-4-boger@wirenboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 21, 2021 at 10:53:37PM +0300, Evgeny Boger wrote:
> R40 (aka V40, A40i, T3) has two different Ethernet IP
> called EMAC and GMAC.
> EMAC only support 10/100 Mbit in MII mode,
> while GMAC support both 10/100 (MII) and 10/100/1000 (RGMII).
> 
> In contrast to A10/A20 where GMAC and EMAC share the same pins
> making EMAC somewhat pointless, on R40 EMAC can be routed to port H.
> Both EMAC (on port H) and GMAC (on port A)
>  can be then enabled at the same time, allowing for two ethernet ports.
> 
> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
> ---
>  arch/arm/boot/dts/sun8i-r40.dtsi | 50 ++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index 1d87fc0c24ee..19ea33421c63 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -217,6 +217,20 @@ syscon: system-control@1c00000 {
>  			#size-cells = <1>;
>  			ranges;
>  
> +			sram_a: sram@0 {
> +				compatible = "mmio-sram";
> +				reg = <0x00000000 0xc000>;
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				ranges = <0 0x00000000 0xc000>;
> +
> +				emac_sram: sram-section@8000 {
> +					compatible = "allwinner,sun4i-a10-sram-a3-a4";
> +					reg = <0x8000 0x4000>;
> +					status = "okay";

'okay' is the default, so you don't need it.

> +				};
> +			};
> +
>  			sram_c: sram@1d00000 {
>  				compatible = "mmio-sram";
>  				reg = <0x01d00000 0xd0000>;
> @@ -543,6 +557,24 @@ gmac_rgmii_pins: gmac-rgmii-pins {
>  				drive-strength = <40>;
>  			};
>  
> +			emac_pa_pins: emac-pa-pins {
> +				pins = "PA0", "PA1", "PA2",
> +				       "PA3", "PA4", "PA5", "PA6",
> +				       "PA7", "PA8", "PA9", "PA10",
> +				       "PA11", "PA12", "PA13", "PA14",
> +				       "PA15", "PA16";
> +				function = "emac";
> +			};
> +
> +			emac_ph_pins: emac-ph-pins {
> +				pins = "PH8", "PH9", "PH10", "PH11",
> +				       "PH14", "PH15", "PH16", "PH17",
> +				       "PH18","PH19", "PH20", "PH21",
> +				       "PH22", "PH23", "PH24", "PH25",
> +				       "PH26", "PH27";
> +				function = "emac";
> +			};
> +
>  			i2c0_pins: i2c0-pins {
>  				pins = "PB0", "PB1";
>  				function = "i2c0";
> @@ -980,6 +1012,24 @@ gmac_mdio: mdio {
>  			};
>  		};
>  
> +		emac: ethernet@1c0b000 {
> +			compatible = "allwinner,sun4i-r40-emac";
> +			reg = <0x01c0b000 0x1000>;
> +			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_EMAC>;
> +			resets = <&ccu RST_BUS_EMAC>;
> +			allwinner,sram = <&emac_sram 1>;
> +			status = "disabled";
> +		};
> +
> +		emac_mdio: mdio@1c0b080 {
> +			compatible = "allwinner,sun4i-a10-mdio";
> +			reg = <0x01c0b080 0x14>;
> +			status = "disabled";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
>  		mbus: dram-controller@1c62000 {
>  			compatible = "allwinner,sun8i-r40-mbus";
>  			reg = <0x01c62000 0x1000>;
> -- 
> 2.25.1
> 
> 
