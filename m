Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69CAD45B263
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 04:02:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbhKXDFY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 22:05:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229773AbhKXDFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Nov 2021 22:05:23 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6166C061574
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 19:02:14 -0800 (PST)
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0DC9482D5B;
        Wed, 24 Nov 2021 04:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1637722931;
        bh=ZVx+k19mgo2HrQzhby/AdSFqm/K17BaFufUhdx0C/dA=;
        h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
        b=MG37aQbU/FEGQCz9uyRn7Xq31cuVNQa1YoUcfsaqOcqo//rDX5Ek21ArlYOCmioNQ
         05lqSEatXF5oh9lUhtOi0FeWF5KRosqktfwiC+I0x8lGD2T//xQbPyNV8yMgOXnYup
         6oZmDfnuHm30vkGlBsHnXbPBkZz+MQmbB6LUrIEKs/VEZiIsTghgDgvIEQYdd1kGHW
         +UIa9r89fBiojbTbtCyXIJuMwadKEcRPJFXt8L795EV+HL8CJ+sbxhY8YXZDFwB/DW
         mm9NIFDgppKHCZ4259zFZe+zN7tNdl6O1Gg4h3dOVc8jc80by4e3Jgjv3ZLexqFK20
         hiJf/PneJ98iA==
Subject: Re: [PATCH v5 2/2] drm/bridge: lvds-codec: Add support for pixel data
 sampling edge select
From:   Marek Vasut <marex@denx.de>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20211017001204.299940-1-marex@denx.de>
 <20211017001204.299940-2-marex@denx.de> <YWxUB9y3qFzkfRR0@ravnborg.org>
 <075913ae-e5a0-3a9e-c928-55cae99ab0e5@denx.de>
 <YWxgKWXBpT6PyQO8@ravnborg.org>
 <3105193d-1809-699c-3281-1a3ecd274a03@denx.de>
Message-ID: <1c2694a8-3764-c99a-0a74-be34b9fa604f@denx.de>
Date:   Wed, 24 Nov 2021 04:02:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <3105193d-1809-699c-3281-1a3ecd274a03@denx.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/24/21 1:04 AM, Marek Vasut wrote:
> On 10/17/21 7:40 PM, Sam Ravnborg wrote:
>> Hi Marek,
> 
> Hi,
> 
>> On Sun, Oct 17, 2021 at 07:29:51PM +0200, Marek Vasut wrote:
>>> On 10/17/21 6:49 PM, Sam Ravnborg wrote:
>>>
>>> [...]
>>>
>>>>> +    /*
>>>>> +     * Encoder might sample data on different clock edge than the 
>>>>> display,
>>>>> +     * for example OnSemi FIN3385 has a dedicated strapping pin to 
>>>>> select
>>>>> +     * the sampling edge.
>>>>> +     */
>>>>> +    if (lvds_codec->connector_type == DRM_MODE_CONNECTOR_LVDS &&
>>>>> +        !of_property_read_u32(dev->of_node, "pclk-sample", &val)) {
>>>>> +        lvds_codec->timings.input_bus_flags = val ?
>>>>> +            DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE :
>>>>> +            DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE;
>>>>> +    }
>>>>> +
>>>>>        /*
>>>>>         * The panel_bridge bridge is attached to the panel's of_node,
>>>>>         * but we need a bridge attached to our of_node for our user
>>>>>         * to look up.
>>>>>         */
>>>>>        lvds_codec->bridge.of_node = dev->of_node;
>>>>> +    lvds_codec->bridge.timings = &lvds_codec->timings;
>>>> I do not understand how this will work. The only field that is set 
>>>> is timings.input_bus_flags
>>>> but any user will see bridge.timings is set and will think this is all
>>>> timing info.
>>>>
>>>> Maybe I just misses something obvious?
>>>
>>> Is there anything else in those timings that should be set ? See
>>> include/drm/drm_bridge.h around line 640
>>>
>>> setup_time_ps/hold_time_ps/dual_link isn't supported by this driver, 
>>> so it
>>> is 0 or false anyway, i.e. no change.
>>
>> Just me being confused with display_timings. Patch looks good.
>> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
>>
>> Ping me in a few days to apply it if there is no more feedback.
> 
> Ping I guess ... Laurent ?

Ping one more time ?
