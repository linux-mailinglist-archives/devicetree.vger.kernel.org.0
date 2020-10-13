Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2295C28CC26
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 13:03:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728441AbgJMLDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 07:03:45 -0400
Received: from mail-out.m-online.net ([212.18.0.10]:32850 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727097AbgJMLDp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 07:03:45 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C9Xj93vk6z1sFh8;
        Tue, 13 Oct 2020 13:03:41 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C9Xj922Hwz1sM8t;
        Tue, 13 Oct 2020 13:03:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id lbCJbeEq6Gsf; Tue, 13 Oct 2020 13:03:39 +0200 (CEST)
X-Auth-Info: 7b7MojVlzhVUJfyHBIhRH0YBhJXoClv6jE7GG1MmNeA=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Tue, 13 Oct 2020 13:03:39 +0200 (CEST)
Subject: Re: [PATCH v2 3/7] dt-bindings: display: mxsfb: Add a bus-width
 endpoint property
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, Stefan Agner <stefan@agner.ch>,
        devicetree@vger.kernel.org,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
 <20201007012438.27970-4-laurent.pinchart@ideasonboard.com>
 <7b8df7af-5ca8-708b-4975-2fdf4280116f@denx.de>
 <20201009235843.GR25040@pendragon.ideasonboard.com>
 <9c7615d6-0f69-5f67-0795-b86ecea2eea8@denx.de>
 <20201013020619.GG3942@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <13dfd626-f0a7-d05d-f90a-069c2389a16c@denx.de>
Date:   Tue, 13 Oct 2020 13:03:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201013020619.GG3942@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/13/20 4:06 AM, Laurent Pinchart wrote:
> Hi Marek,
> 
> On Sat, Oct 10, 2020 at 10:47:05AM +0200, Marek Vasut wrote:
>> On 10/10/20 1:58 AM, Laurent Pinchart wrote:
>>> Hi Marek,
>>
>> Hi,
>>
>>> On Wed, Oct 07, 2020 at 10:40:26AM +0200, Marek Vasut wrote:
>>>> On 10/7/20 3:24 AM, Laurent Pinchart wrote:
>>>>
>>>> [...]
>>>>
>>>>> +          bus-width:
>>>>> +            enum: [16, 18, 24]
>>>>> +            description: |
>>>>> +              The output bus width. This value overrides the configuration
>>>>> +              derived from the connected device (encoder or panel). It should
>>>>> +              only be specified when PCB routing of the data signals require a
>>>>> +              different bus width on the LCDIF and the connected device. For
>>>>> +              instance, when a 18-bit RGB panel has its R[5:0], G[5:0] and
>>>>> +              B[5:0] signals connected to LCD_DATA[7:2], LCD_DATA[15:10] and
>>>>> +              LCD_DATA[23:18] instead of LCD_DATA[5:0], LCD_DATA[11:6] and
>>>>> +              LCD_DATA[17:12], bus-width should be set to 24.
>>>>
>>>> The iMX6 IPUv3 uses interface-pix-fmt which is a bit more flexible, but
>>>> I'm not sure whether it's the right way to go about this, see:
>>>> Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
>>>
>>> I think specifying the bus with is better. It's a standard property, but
>>> more than that, a given bus width can carry different formats. For
>>> instance, a 24-bus could carry RGB666 data (with dithering for the
>>> LSBs).
>>
>> I think that's exactly what the interface-pix-fmt was trying to solve
>> for the IPUv3, there you could have e.g. both RGB666 and LVDS666 , which
>> were different.
> 
> My point is that the driver should support multiple formats that can be
> carried over a given bus width, with the actual format to be used
> queried from the sink (usually a panel) instead of being hardcoded in
> DT.

So, should the IPUv3 be fixed as well then ?
