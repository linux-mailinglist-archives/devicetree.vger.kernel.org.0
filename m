Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC6FF30FBE6
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 19:49:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239378AbhBDSsh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 13:48:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239329AbhBDSrz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 13:47:55 -0500
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77299C061786
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 10:46:59 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DWnb50SKhz1s479;
        Thu,  4 Feb 2021 19:46:57 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DWnb46ppsz1t6pp;
        Thu,  4 Feb 2021 19:46:56 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id SR-7xsAzxyQK; Thu,  4 Feb 2021 19:46:55 +0100 (CET)
X-Auth-Info: bxnTP5xuJO9A07TpN758S5k87NX4EzxiN/09vLEQ3nY=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Thu,  4 Feb 2021 19:46:55 +0100 (CET)
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 bindings
To:     Doug Anderson <dianders@chromium.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20210130181014.161457-1-marex@denx.de>
 <CAD=FV=UzkP8Rp6BDNVr1FmOK4GY9_dSeT6fCjQLMatHftyj9iA@mail.gmail.com>
 <c7df0302-c2c1-6ccb-7f7f-8b781d9e3d9b@denx.de>
 <CAD=FV=U1xN5SPxGzCLMbTT1bL7W4wpXfOt0KeJ3=84TCHfJ8UA@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <0a92a80a-e4cb-2e3f-326e-1250a2787258@denx.de>
Date:   Thu, 4 Feb 2021 19:46:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAD=FV=U1xN5SPxGzCLMbTT1bL7W4wpXfOt0KeJ3=84TCHfJ8UA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/4/21 7:38 PM, Doug Anderson wrote:
> Hi,

Hi,

[...]

>>>> +properties:
>>>> +  compatible:
>>>> +    const: ti,sn65dsi83
>>>> +
>>>> +  reg:
>>>> +    const: 0x2d
>>>> +
>>>> +  enable-gpios:
>>>> +    maxItems: 1
>>>> +    description: GPIO specifier for bridge_en pin (active high).
>>>
>>> I see two regulators: vcc and vcore.  Shouldn't those be listed?
>>
>> Those are not implemented and not tested, so if someone needs them later
>> on, they can be added then.
> 
> Sure.  I guess it can go either way.  For the regulator it'd the kind
> of thing that's super easy to add support for and hard to mess up.

If someone can test those regulators (I might be able to, in next 
revision of hardware, we'll see), then this can be added.

>>>> +          endpoint:
>>>> +            type: object
>>>> +            additionalProperties: false
>>>> +            properties:
>>>> +              remote-endpoint: true
>>>> +              data-lanes:
>>>> +                description: array of physical DSI data lane indexes.
>>>
>>> The chip doesn't allow for arbitrary remapping here, right?  So you're
>>> just using this as the official way to specify the number of lanes?  I
>>> guess the only valid values are:
>>>
>>> <0>
>>> <0 1>
>>> <0 1 2>
>>> <0 1 2 3>
>>
>> Shouldn't that be <1 2 3 4> ?
> 
> The data manual refers to the channels starting at 0, so if it's
> arbitrary that seems a better way to go?

Either way is OK, but before I change this, I would like some 
confirmation this enumeration really is arbitrary.

>>> In sn65dsi86 we attempted to enforce that a valid option was selected
>>> for the output lanes.  Could you do something similar?  If nothing
>>> else adding a description of the valid options would be good.
>>
>> I saw the binding, but I was under the impressions the DSI86 can do lane
>> reordering, isn't that the case ? Maybe I misunderstood it.
> 
> DSI86 can reorder the output lanes quite flexibly.  It can't reorder
> the input lanes, though.

The eDP ones ? OK

>> But yes, if you have a suggestion how to make a non-cryptic list of
>> those four lane mapping options, please do share this info.
> 
> I doubt I can write this correctly without a whole lot of futzing /
> messing, but maybe something like:
> 
> data-lanes:
>    oneOf:
>      - items:
>          - 0
>      - items:
>          - 0
>          - 1
>      - items:
>          - 0
>          - 1
>          - 2
>      - items:
>          - 0
>          - 1
>          - 2
>          - 3
> 

I was hoping for some better syntax. Maybe there is one ?
