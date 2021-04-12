Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA0635BB89
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 10:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236921AbhDLIBc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 04:01:32 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:44660 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230034AbhDLIBc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 04:01:32 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 625645A9;
        Mon, 12 Apr 2021 10:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1618214473;
        bh=NwYqC5sdxP5p0r2zbtbS2E5EqsmDnGRwlFHe6O8Cpmo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NtiX3Cfca8vBq5YBHo8CtTNxtIG1ZtddH19vZLHBbvpHVIFj2ljhuO8EmPaxrclip
         PRxChZk8Yep8F5zZ2ju/D/GkxBKXt8FRduz/wFFt3a9Ny5bCb6Ig6H3pDhi6uu/Pwm
         8S98dh7wQRw4M/Mn+8OP9t8/qB7OfwRV2UpOeVfg=
Date:   Mon, 12 Apr 2021 11:00:24 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc:     Nishanth Menon <nm@ti.com>, Benoit Parrot <bparrot@ti.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Tony Lindgren <tony@atomide.com>,
        Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH 1/2] ARM: dts: dra76-evm: remove ov5640
Message-ID: <YHP+GDq2omVJwCfq@pendragon.ideasonboard.com>
References: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tomi,

Thank you for the patch.

On Mon, Apr 12, 2021 at 10:53:05AM +0300, Tomi Valkeinen wrote:
> DRA76 EVM boards are not shipped with OV5640 sensor module, it is a
> separate purchase. OV5640 module is also just one of the possible
> sensors or capture boards you can connect.
> 
> However, for some reason, OV5640 has been added to the board dts file,
> making it cumbersome to use other sensors.
> 
> Remove the OV5640 from the dts file so that it is easy to use other
> sensors via DT overlays.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  arch/arm/boot/dts/dra76-evm.dts | 27 ---------------------------
>  1 file changed, 27 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/dra76-evm.dts b/arch/arm/boot/dts/dra76-evm.dts
> index 9bd01ae40b1d..f3c900e1b953 100644
> --- a/arch/arm/boot/dts/dra76-evm.dts
> +++ b/arch/arm/boot/dts/dra76-evm.dts
> @@ -158,12 +158,6 @@ aic_dvdd: fixedregulator-aic_dvdd {
>  		regulator-max-microvolt = <1800000>;
>  	};
>  
> -	clk_ov5640_fixed: clock {
> -		compatible = "fixed-clock";
> -		#clock-cells = <0>;
> -		clock-frequency = <24000000>;
> -	};
> -
>  	hdmi0: connector {
>  		compatible = "hdmi-connector";
>  		label = "hdmi";
> @@ -409,22 +403,6 @@ tlv320aic3106: tlv320aic3106@19 {
>  &i2c5 {
>  	status = "okay";
>  	clock-frequency = <400000>;
> -
> -	ov5640@3c {
> -		compatible = "ovti,ov5640";
> -		reg = <0x3c>;
> -
> -		clocks = <&clk_ov5640_fixed>;
> -		clock-names = "xclk";
> -
> -		port {
> -			csi2_cam0: endpoint {
> -				remote-endpoint = <&csi2_phy0>;
> -				clock-lanes = <0>;
> -				data-lanes = <1 2>;
> -			};
> -		};
> -	};
>  };

You could drop the node completely.

>  
>  &cpu0 {
> @@ -574,11 +552,6 @@ can-transceiver {
>  };
>  
>  &csi2_0 {
> -	csi2_phy0: endpoint {
> -		remote-endpoint = <&csi2_cam0>;
> -		clock-lanes = <0>;
> -		data-lanes = <1 2>;
> -	};
>  };

And here too.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Is there an overlay available somewhere for this ?

>  
>  &ipu2 {

-- 
Regards,

Laurent Pinchart
