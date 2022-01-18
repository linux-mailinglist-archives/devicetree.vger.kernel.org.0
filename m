Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CDE1492EEE
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 21:02:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245377AbiARUCT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 15:02:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245033AbiARUCS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jan 2022 15:02:18 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C5AEC061574
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 12:02:18 -0800 (PST)
Received: from [IPV6:2a01:e0a:169:7140:7dca:6fc4:e33a:2144] (unknown [IPv6:2a01:e0a:169:7140:7dca:6fc4:e33a:2144])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 765CD15AF;
        Tue, 18 Jan 2022 21:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1642536135;
        bh=3s8BGDwhmreTUd9S4ATRss/IJIPZ7IbhHDkwoWJL+/0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ivhA+VGN+BqVQUduiypjyK09IAowyQjeJfL02WLHtS7NUiYB7wxLa9rTKF/xY+Ehn
         CYCkxwXeY69KGPKW7y1TWjoUFxtFCALBh08+WfGkQ7Y57ROrgs6jmX6kOACMRwCNPt
         bTHKWEsvXz87D3Xulp4Sh2vLBi1MSpX63x98ARQ8=
Message-ID: <051e93dc-0c9f-44a3-634e-6610833fd385@ideasonboard.com>
Date:   Tue, 18 Jan 2022 21:02:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v3] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Cyril Brulebois <kibi@debian.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20211231115109.94626-1-uwe@kleine-koenig.org>
 <2540edbe-084e-802f-3533-0aa66ddc20ec@ideasonboard.com>
 <397bf7c2-da9f-a993-f8bb-5d6cbc6e87eb@gmail.com>
From:   Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>
In-Reply-To: <397bf7c2-da9f-a993-f8bb-5d6cbc6e87eb@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2022 21:00, Florian Fainelli wrote:
> On 1/18/22 11:45 AM, Jean-Michel Hautbois wrote:
>> Hi Uwe,
>>
>> Thanks for the patch !
>>
>> On 31/12/2021 12:51, Uwe Kleine-König wrote:
>>> The cm4-io board comes with an PCF85063. Add it to the device tree to
>>> make
>>> it usable. The i2c0 bus can use two different pinmux settings to use
>>> different pins. To keep the bus appearing on the usual pin pair (gpio0 +
>>> gpio1) use a pinctrl-muxed setting as the vendor dts does.
>>>
>>> Note that if you modified the dts before to add devices to the i2c bus
>>> appearing on pins gpio0 + gpio1 (either directly in the dts or using an
>>> overlay), you have to put these into the i2c@0 node introduced here now.
>>>
>>> Reviewed-by: Maxime Ripard <maxime@cerno.tech>
>>> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
>>> ---
>>> Hello,
>>>
>>> changes since v2 (20211216212948.nrfmm4jpbhoknfr5@pengutronix.de):
>>>
>>>    - add Maxime's R-b tag
>>>    - change the commit log wording to say vendor dts instead of upstream
>>>      dts
>>>    - Add a paragraph to the commit log about breakage this commits
>>>      introduces.
>>>
>>> Best regards
>>> Uwe
>>>
>>>    arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 35 ++++++++++++++++++++++++
>>>    1 file changed, 35 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
>>> b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
>>> index 19600b629be5..5ddad146b541 100644
>>> --- a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
>>> +++ b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
>>> @@ -18,6 +18,41 @@ led-pwr {
>>>                linux,default-trigger = "default-on";
>>>            };
>>>        };
>>> +
>>> +    i2c0mux {
>>> +        compatible = "i2c-mux-pinctrl";
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +
>>> +        i2c-parent = <&i2c0>;
>>> +
>>> +        pinctrl-names = "i2c0", "i2c0-vc";
>>> +        pinctrl-0 = <&i2c0_gpio0>;
>>> +        pinctrl-1 = <&i2c0_gpio44>;
>>> +
>>> +        i2c@0 {
>>> +            reg = <0>;
>>> +            #address-cells = <1>;
>>> +            #size-cells = <0>;
>>> +        };
>>> +
>>> +        i2c@1 {
>>> +            reg = <1>;
>>> +            #address-cells = <1>;
>>> +            #size-cells = <0>;
>>> +
>>> +            rtc@51 {
>>> +                /* Attention: An alarm resets the machine */
>>> +                compatible = "nxp,pcf85063";
>>> +                reg = <0x51>;
>>> +            };
>>> +        };
>>> +    };
>>> +};
>>
>> This is also needed for camera and display support.
>> I tested it successfully with imx219 + unicam on mainline.
> 
> Thanks for testing, can you reply with a Tested-by tag so it could be
> applied to the commit message when this gets picked up?
> 

Oh, missed this, sorry:
Tested-by: Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>
