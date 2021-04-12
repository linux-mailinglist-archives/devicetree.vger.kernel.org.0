Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0ADC35BB8C
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 10:01:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237062AbhDLICI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 04:02:08 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:44684 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230034AbhDLICH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 04:02:07 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2E4663F0;
        Mon, 12 Apr 2021 10:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1618214509;
        bh=m69DO57n92pPseF4PR6irIPueCWKPj+XgOLgPK3Wm0M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=vj6+hF33xv+20KMtdGD1x4blKZ+aczOwQF+8JwdwEPRWYGTC7FIZm24f/iSR4TYfM
         3Y6pItZu5Ir0TrpsxEUVGU1TYei7M55uJN8GkbzeGOvxc2SNahU+gwGS+C7F/06H5t
         7aM++RCwwaIXZGtAZo8yZ0Q0IIw39W+uvZByNpsc=
Date:   Mon, 12 Apr 2021 11:00:59 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc:     Nishanth Menon <nm@ti.com>, Benoit Parrot <bparrot@ti.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Tony Lindgren <tony@atomide.com>,
        Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am654-base-board: remove ov5640
Message-ID: <YHP+O3HPCCWOQRb0@pendragon.ideasonboard.com>
References: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
 <20210412075306.102884-2-tomi.valkeinen@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210412075306.102884-2-tomi.valkeinen@ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tomi,

Thank you for the patch.

On Mon, Apr 12, 2021 at 10:53:06AM +0300, Tomi Valkeinen wrote:
> AM654 EVM boards are not shipped with OV5640 sensor module, it is a
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
>  .../arm64/boot/dts/ti/k3-am654-base-board.dts | 27 -------------------
>  1 file changed, 27 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> index fe3043943906..76358b4944e1 100644
> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> @@ -85,12 +85,6 @@ sw6 {
>  			gpios = <&wkup_gpio0 27 GPIO_ACTIVE_LOW>;
>  		};
>  	};
> -
> -	clk_ov5640_fixed: clock {
> -		compatible = "fixed-clock";
> -		#clock-cells = <0>;
> -		clock-frequency = <24000000>;
> -	};
>  };
>  
>  &wkup_pmx0 {
> @@ -288,22 +282,6 @@ &main_i2c1 {
>  	pinctrl-0 = <&main_i2c1_pins_default>;
>  	clock-frequency = <400000>;
>  
> -	ov5640: camera@3c {
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
> -
>  };

As for patch 1/2, you could drop the two nodes completely. Same question
about overlay availability.

>  
>  &main_i2c2 {
> @@ -497,11 +475,6 @@ flash@0{
>  };
>  
>  &csi2_0 {
> -	csi2_phy0: endpoint {
> -		remote-endpoint = <&csi2_cam0>;
> -		clock-lanes = <0>;
> -		data-lanes = <1 2>;
> -	};
>  };
>  
>  &mcu_cpsw {

-- 
Regards,

Laurent Pinchart
