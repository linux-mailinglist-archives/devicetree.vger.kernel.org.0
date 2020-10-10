Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 583B828A383
	for <lists+devicetree@lfdr.de>; Sun, 11 Oct 2020 01:09:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726638AbgJJW46 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Oct 2020 18:56:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731195AbgJJTxO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Oct 2020 15:53:14 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADF14C0613D7
        for <devicetree@vger.kernel.org>; Sat, 10 Oct 2020 02:09:57 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C7fJ21hkXz1rrKZ;
        Sat, 10 Oct 2020 11:08:50 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C7fJ20R3bz1qvgd;
        Sat, 10 Oct 2020 11:08:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id 3d4ypTh_aFbm; Sat, 10 Oct 2020 11:08:48 +0200 (CEST)
X-Auth-Info: VSShtmZctzVahsNuDR5I32dJjEw6fWhdYFF6IzeUW/o=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sat, 10 Oct 2020 11:08:48 +0200 (CEST)
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
From:   Marek Vasut <marex@denx.de>
Message-ID: <9c7615d6-0f69-5f67-0795-b86ecea2eea8@denx.de>
Date:   Sat, 10 Oct 2020 10:47:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201009235843.GR25040@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/10/20 1:58 AM, Laurent Pinchart wrote:
> Hi Marek,

Hi,

> On Wed, Oct 07, 2020 at 10:40:26AM +0200, Marek Vasut wrote:
>> On 10/7/20 3:24 AM, Laurent Pinchart wrote:
>>
>> [...]
>>
>>> +          bus-width:
>>> +            enum: [16, 18, 24]
>>> +            description: |
>>> +              The output bus width. This value overrides the configuration
>>> +              derived from the connected device (encoder or panel). It should
>>> +              only be specified when PCB routing of the data signals require a
>>> +              different bus width on the LCDIF and the connected device. For
>>> +              instance, when a 18-bit RGB panel has its R[5:0], G[5:0] and
>>> +              B[5:0] signals connected to LCD_DATA[7:2], LCD_DATA[15:10] and
>>> +              LCD_DATA[23:18] instead of LCD_DATA[5:0], LCD_DATA[11:6] and
>>> +              LCD_DATA[17:12], bus-width should be set to 24.
>>
>> The iMX6 IPUv3 uses interface-pix-fmt which is a bit more flexible, but
>> I'm not sure whether it's the right way to go about this, see:
>> Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
> 
> I think specifying the bus with is better. It's a standard property, but
> more than that, a given bus width can carry different formats. For
> instance, a 24-bus could carry RGB666 data (with dithering for the
> LSBs).

I think that's exactly what the interface-pix-fmt was trying to solve
for the IPUv3, there you could have e.g. both RGB666 and LVDS666 , which
were different.
