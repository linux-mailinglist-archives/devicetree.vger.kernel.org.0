Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61E5C35C19A
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 11:32:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239866AbhDLJbm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 05:31:42 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:34130 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241815AbhDLJ0w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 05:26:52 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13C9QPwu098727;
        Mon, 12 Apr 2021 04:26:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1618219585;
        bh=7X5hJ0swIgdwTrO9RnjbXMZ+r1QGTKr3SWpWoc5weRA=;
        h=From:Subject:To:CC:References:Date:In-Reply-To;
        b=G5sjyoRny2Ya7nvLiRL4e+y2I9NplGItxcuVejNM+V+MFsL51bH76r14PhSTjygjc
         k0PsufqcTHkxSpbuzh4CkMo2bT97JeO5hgv0HsemdVROd5NW839AxX2aLLETnfSsvx
         GbCbggA6D9eZUE0z1TDPnaI5V3WMf7qBqT3QML4w=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13C9QPfE053667
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 12 Apr 2021 04:26:25 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 12
 Apr 2021 04:26:25 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 12 Apr 2021 04:26:25 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13C9QLZL130088;
        Mon, 12 Apr 2021 04:26:22 -0500
From:   Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am654-base-board: remove ov5640
To:     "Yadav, Pratyush" <p.yadav@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC:     Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        "Menon, Nishanth" <nm@ti.com>, "Parrot, Benoit" <bparrot@ti.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Tony Lindgren <tony@atomide.com>
References: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
 <20210412075306.102884-2-tomi.valkeinen@ideasonboard.com>
 <YHP+O3HPCCWOQRb0@pendragon.ideasonboard.com>
 <20210412083605.qnpf2mxy3rcaj7dv@ti.com>
Message-ID: <61ca0a2b-900e-daca-3d51-e8fd2c2b8073@ti.com>
Date:   Mon, 12 Apr 2021 14:56:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210412083605.qnpf2mxy3rcaj7dv@ti.com>
Content-Type: text/plain; charset="windows-1252"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/04/21 2:06 pm, Pratyush Yadav wrote:
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
>>>  .../arm64/boot/dts/ti/k3-am654-base-board.dts | 27 -------------------
>>>  1 file changed, 27 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>>> index fe3043943906..76358b4944e1 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>>> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>>> @@ -85,12 +85,6 @@ sw6 {
>>>                      gpios = <&wkup_gpio0 27 GPIO_ACTIVE_LOW>;
>>>              };
>>>      };
>>> -
>>> -   clk_ov5640_fixed: clock {
>>> -           compatible = "fixed-clock";
>>> -           #clock-cells = <0>;
>>> -           clock-frequency = <24000000>;
>>> -   };
>>>  };
>>>  
>>>  &wkup_pmx0 {
>>> @@ -288,22 +282,6 @@ &main_i2c1 {
>>>      pinctrl-0 = <&main_i2c1_pins_default>;
>>>      clock-frequency = <400000>;
>>>  
>>> -   ov5640: camera@3c {
>>> -           compatible = "ovti,ov5640";
>>> -           reg = <0x3c>;
>>> -
>>> -           clocks = <&clk_ov5640_fixed>;
>>> -           clock-names = "xclk";
>>> -
>>> -           port {
>>> -                   csi2_cam0: endpoint {
>>> -                           remote-endpoint = <&csi2_phy0>;
>>> -                           clock-lanes = <0>;
>>> -                           data-lanes = <1 2>;
>>> -                   };
>>> -           };
>>> -   };
>>> -
>>>  };
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
> 

No, please don't drop main_i2c1 node. As long as pinmux is setup, its
possible to communicate with I2C devices from user space too even when
there are no subnodes.

-- 
Regards
Vignesh
