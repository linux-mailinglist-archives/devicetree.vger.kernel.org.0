Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 991FC35BC49
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 10:36:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237335AbhDLIgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 04:36:38 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:47606 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237322AbhDLIgh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 04:36:37 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13C8a95Y076261;
        Mon, 12 Apr 2021 03:36:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1618216569;
        bh=HRhjYluxZformnP5jjzi3Llar19URgX6oT6zKlL2H8w=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=mKC01w7NmPQWUEyG++WeWiaipp4mQsa/faIlB4l/+3jZ7j2ie+/wiWyXQeNMJlVcT
         dfD+k/zIWGzHSHDZ/z7n6lW2C6zx9j+a4WCYq82hogFXojaxUW0JvQSb/IiIe6uM43
         /JLbCbvPZMYzbWWMPOKLtpOm6XAM/2sVpEbSJoPc=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13C8a97j105316
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 12 Apr 2021 03:36:09 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 12
 Apr 2021 03:36:09 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 12 Apr 2021 03:36:09 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13C8a8BO032018;
        Mon, 12 Apr 2021 03:36:09 -0500
Date:   Mon, 12 Apr 2021 14:06:07 +0530
From:   Pratyush Yadav <p.yadav@ti.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC:     Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Nishanth Menon <nm@ti.com>, Benoit Parrot <bparrot@ti.com>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am654-base-board: remove ov5640
Message-ID: <20210412083605.qnpf2mxy3rcaj7dv@ti.com>
References: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
 <20210412075306.102884-2-tomi.valkeinen@ideasonboard.com>
 <YHP+O3HPCCWOQRb0@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <YHP+O3HPCCWOQRb0@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+ Vignesh

On 12/04/21 11:00AM, Laurent Pinchart wrote:
> Hi Tomi,
> 
> Thank you for the patch.
> 
> On Mon, Apr 12, 2021 at 10:53:06AM +0300, Tomi Valkeinen wrote:
> > AM654 EVM boards are not shipped with OV5640 sensor module, it is a
> > separate purchase. OV5640 module is also just one of the possible
> > sensors or capture boards you can connect.
> > 
> > However, for some reason, OV5640 has been added to the board dts file,
> > making it cumbersome to use other sensors.
> > 
> > Remove the OV5640 from the dts file so that it is easy to use other
> > sensors via DT overlays.
> > 
> > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> > ---
> >  .../arm64/boot/dts/ti/k3-am654-base-board.dts | 27 -------------------
> >  1 file changed, 27 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> > index fe3043943906..76358b4944e1 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> > +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> > @@ -85,12 +85,6 @@ sw6 {
> >  			gpios = <&wkup_gpio0 27 GPIO_ACTIVE_LOW>;
> >  		};
> >  	};
> > -
> > -	clk_ov5640_fixed: clock {
> > -		compatible = "fixed-clock";
> > -		#clock-cells = <0>;
> > -		clock-frequency = <24000000>;
> > -	};
> >  };
> >  
> >  &wkup_pmx0 {
> > @@ -288,22 +282,6 @@ &main_i2c1 {
> >  	pinctrl-0 = <&main_i2c1_pins_default>;
> >  	clock-frequency = <400000>;
> >  
> > -	ov5640: camera@3c {
> > -		compatible = "ovti,ov5640";
> > -		reg = <0x3c>;
> > -
> > -		clocks = <&clk_ov5640_fixed>;
> > -		clock-names = "xclk";
> > -
> > -		port {
> > -			csi2_cam0: endpoint {
> > -				remote-endpoint = <&csi2_phy0>;
> > -				clock-lanes = <0>;
> > -				data-lanes = <1 2>;
> > -			};
> > -		};
> > -	};
> > -
> >  };
> 
> As for patch 1/2, you could drop the two nodes completely. Same question
> about overlay availability.

The &main_i2c1 node was added much before the OV5640 node in 
19a1768fc34a (arm64: dts: ti: k3-am654-base-board: Add I2C nodes, 
2018-11-13). I wonder if there is any reason for having it present even 
if there are no subnodes. One reason that I can think of is that this 
node defines the pinmux configuration and clock frequency which makes 
more sense here than in an overlay.

> 
> >  
> >  &main_i2c2 {
> > @@ -497,11 +475,6 @@ flash@0{
> >  };
> >  
> >  &csi2_0 {
> > -	csi2_phy0: endpoint {
> > -		remote-endpoint = <&csi2_cam0>;
> > -		clock-lanes = <0>;
> > -		data-lanes = <1 2>;
> > -	};
> >  };

I agree with Laurent that the entire &csi2_0 node can be dropped.

Have you tested the CAL driver with this node removed and no overlay to 
add it back? Can it handle the error gracefully or does it crash and 
burn?

> >  
> >  &mcu_cpsw {
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.
