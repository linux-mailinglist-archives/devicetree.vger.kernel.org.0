Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B4C435C0FA
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 11:23:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239966AbhDLJSk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 05:18:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241786AbhDLJRR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 05:17:17 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE4B5C061574
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 02:15:07 -0700 (PDT)
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi [91.157.208.71])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 28A9B3F0;
        Mon, 12 Apr 2021 11:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1618218905;
        bh=R/sQjgekGKi0dQEpB6c2WYBsNlUIehkjxHLKQk/kObI=;
        h=To:Cc:References:From:Subject:Date:In-Reply-To:From;
        b=EyY4d+W/R2UpBeyK3nozWrFZub7FvGa1VOVvlDVuBzh/fhATTYr2s4tx/dv2NMdir
         ih70Z47kxd2EJkhrKuy+EAgEPBZMrYjafnd4Xz98Yj9LAmfDAWb9o37dq4lsTTCFjw
         pmMzgHD9/dQr5HmFp9jC0A/of0XTJ+jccc6byTvw=
To:     Pratyush Yadav <p.yadav@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Nishanth Menon <nm@ti.com>, Benoit Parrot <bparrot@ti.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
References: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
 <20210412075306.102884-2-tomi.valkeinen@ideasonboard.com>
 <YHP+O3HPCCWOQRb0@pendragon.ideasonboard.com>
 <20210412083605.qnpf2mxy3rcaj7dv@ti.com>
From:   Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am654-base-board: remove ov5640
Message-ID: <04b96345-f1a9-71bc-ce76-07215648e810@ideasonboard.com>
Date:   Mon, 12 Apr 2021 12:15:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210412083605.qnpf2mxy3rcaj7dv@ti.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2021 11:36, Pratyush Yadav wrote:
> + Vignesh
> 
> On 12/04/21 11:00AM, Laurent Pinchart wrote:
>> Hi Tomi,
>>
>> Thank you for the patch.
>>
>> On Mon, Apr 12, 2021 at 10:53:06AM +0300, Tomi Valkeinen wrote:
>>> AM654 EVM boards are not shipped with OV5640 sensor module, it is a
>>> separate purchase. OV5640 module is also just one of the possible
>>> sensors or capture boards you can connect.
>>>
>>> However, for some reason, OV5640 has been added to the board dts file,
>>> making it cumbersome to use other sensors.
>>>
>>> Remove the OV5640 from the dts file so that it is easy to use other
>>> sensors via DT overlays.
>>>
>>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
>>> ---
>>>   .../arm64/boot/dts/ti/k3-am654-base-board.dts | 27 -------------------
>>>   1 file changed, 27 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>>> index fe3043943906..76358b4944e1 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>>> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>>> @@ -85,12 +85,6 @@ sw6 {
>>>   			gpios = <&wkup_gpio0 27 GPIO_ACTIVE_LOW>;
>>>   		};
>>>   	};
>>> -
>>> -	clk_ov5640_fixed: clock {
>>> -		compatible = "fixed-clock";
>>> -		#clock-cells = <0>;
>>> -		clock-frequency = <24000000>;
>>> -	};
>>>   };
>>>   
>>>   &wkup_pmx0 {
>>> @@ -288,22 +282,6 @@ &main_i2c1 {
>>>   	pinctrl-0 = <&main_i2c1_pins_default>;
>>>   	clock-frequency = <400000>;
>>>   
>>> -	ov5640: camera@3c {
>>> -		compatible = "ovti,ov5640";
>>> -		reg = <0x3c>;
>>> -
>>> -		clocks = <&clk_ov5640_fixed>;
>>> -		clock-names = "xclk";
>>> -
>>> -		port {
>>> -			csi2_cam0: endpoint {
>>> -				remote-endpoint = <&csi2_phy0>;
>>> -				clock-lanes = <0>;
>>> -				data-lanes = <1 2>;
>>> -			};
>>> -		};
>>> -	};
>>> -
>>>   };
>>
>> As for patch 1/2, you could drop the two nodes completely. Same question
>> about overlay availability.
> 
> The &main_i2c1 node was added much before the OV5640 node in
> 19a1768fc34a (arm64: dts: ti: k3-am654-base-board: Add I2C nodes,
> 2018-11-13). I wonder if there is any reason for having it present even
> if there are no subnodes. One reason that I can think of is that this
> node defines the pinmux configuration and clock frequency which makes
> more sense here than in an overlay.

Right, and we also have an empty main_i2c2 there. I'd rather keep empty 
main_i2c1 to be in line with main_i2c2, and to have the pinmux in the 
main dts file. Unless someone can say we can remove both main_i2c1 and 
main_i2c2.

> 
>>
>>>   
>>>   &main_i2c2 {
>>> @@ -497,11 +475,6 @@ flash@0{
>>>   };
>>>   
>>>   &csi2_0 {
>>> -	csi2_phy0: endpoint {
>>> -		remote-endpoint = <&csi2_cam0>;
>>> -		clock-lanes = <0>;
>>> -		data-lanes = <1 2>;
>>> -	};
>>>   };
> 
> I agree with Laurent that the entire &csi2_0 node can be dropped.
> 
> Have you tested the CAL driver with this node removed and no overlay to
> add it back? Can it handle the error gracefully or does it crash and
> burn?

No, I haven't tested that for a while.

  Tomi
