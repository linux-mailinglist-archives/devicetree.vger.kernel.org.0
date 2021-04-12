Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF6F235BC10
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 10:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237219AbhDLI0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 04:26:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237125AbhDLI0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 04:26:38 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28BAEC061574
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 01:26:21 -0700 (PDT)
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi [91.157.208.71])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3FE1E3F0;
        Mon, 12 Apr 2021 10:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1618215979;
        bh=KrhyDVxscUof/Otj5LN4WFTMFaYP2oQXgSzb6LyLTFM=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=g2DoNOGg9WKLJb3pr0iyS+2klWT15dREzqQ16aF4EnScyWOD7QY4pRRZwozyBio2G
         vjwLD3ZHdaKVEbSNfObzch9/pgf7ekDa3MLw7XVGOem9MfRKO/b7OV2K0VmQv85zUk
         bZArkRUy9MNUTyMcYC6aLi0fSfjn+hhDuZLWfIA4=
Subject: Re: [PATCH 1/2] ARM: dts: dra76-evm: remove ov5640
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Nishanth Menon <nm@ti.com>, Benoit Parrot <bparrot@ti.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Tony Lindgren <tony@atomide.com>,
        Pratyush Yadav <p.yadav@ti.com>
References: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
 <YHP+GDq2omVJwCfq@pendragon.ideasonboard.com>
From:   Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Message-ID: <cca8ba39-d1b2-0022-15ad-e0126ee1a8cb@ideasonboard.com>
Date:   Mon, 12 Apr 2021 11:26:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YHP+GDq2omVJwCfq@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2021 11:00, Laurent Pinchart wrote:
> Hi Tomi,
> 
> Thank you for the patch.
> 
> On Mon, Apr 12, 2021 at 10:53:05AM +0300, Tomi Valkeinen wrote:
>> DRA76 EVM boards are not shipped with OV5640 sensor module, it is a
>> separate purchase. OV5640 module is also just one of the possible
>> sensors or capture boards you can connect.
>>
>> However, for some reason, OV5640 has been added to the board dts file,
>> making it cumbersome to use other sensors.
>>
>> Remove the OV5640 from the dts file so that it is easy to use other
>> sensors via DT overlays.
>>
>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
>> ---
>>   arch/arm/boot/dts/dra76-evm.dts | 27 ---------------------------
>>   1 file changed, 27 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/dra76-evm.dts b/arch/arm/boot/dts/dra76-evm.dts
>> index 9bd01ae40b1d..f3c900e1b953 100644
>> --- a/arch/arm/boot/dts/dra76-evm.dts
>> +++ b/arch/arm/boot/dts/dra76-evm.dts
>> @@ -158,12 +158,6 @@ aic_dvdd: fixedregulator-aic_dvdd {
>>   		regulator-max-microvolt = <1800000>;
>>   	};
>>   
>> -	clk_ov5640_fixed: clock {
>> -		compatible = "fixed-clock";
>> -		#clock-cells = <0>;
>> -		clock-frequency = <24000000>;
>> -	};
>> -
>>   	hdmi0: connector {
>>   		compatible = "hdmi-connector";
>>   		label = "hdmi";
>> @@ -409,22 +403,6 @@ tlv320aic3106: tlv320aic3106@19 {
>>   &i2c5 {
>>   	status = "okay";
>>   	clock-frequency = <400000>;
>> -
>> -	ov5640@3c {
>> -		compatible = "ovti,ov5640";
>> -		reg = <0x3c>;
>> -
>> -		clocks = <&clk_ov5640_fixed>;
>> -		clock-names = "xclk";
>> -
>> -		port {
>> -			csi2_cam0: endpoint {
>> -				remote-endpoint = <&csi2_phy0>;
>> -				clock-lanes = <0>;
>> -				data-lanes = <1 2>;
>> -			};
>> -		};
>> -	};
>>   };
> 
> You could drop the node completely.
> 
>>   
>>   &cpu0 {
>> @@ -574,11 +552,6 @@ can-transceiver {
>>   };
>>   
>>   &csi2_0 {
>> -	csi2_phy0: endpoint {
>> -		remote-endpoint = <&csi2_cam0>;
>> -		clock-lanes = <0>;
>> -		data-lanes = <1 2>;
>> -	};
>>   };
> 
> And here too.
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Is there an overlay available somewhere for this ?

I have a work branch for dra76 and am654 overlays for TI's DT overlay tree:

https://git.kernel.org/pub/scm/linux/kernel/git/tomba/linux-dt.git/commit/?h=multistream/work&id=c997e4854164cbfcf11174e9c7d012967b6f399d
https://git.kernel.org/pub/scm/linux/kernel/git/tomba/linux-dt.git/commit/?h=multistream/work&id=311bdaaa28ba16b0142f5879fc7c79aa3aa5906d

I have not sent these to TI yet.

  Tomi
