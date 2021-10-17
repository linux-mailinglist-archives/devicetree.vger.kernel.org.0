Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63E6D430BEE
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 22:05:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242814AbhJQUID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 16:08:03 -0400
Received: from phobos.denx.de ([85.214.62.61]:33704 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233148AbhJQUID (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 17 Oct 2021 16:08:03 -0400
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 301B682849;
        Sun, 17 Oct 2021 22:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1634501152;
        bh=miRIGtV3Ypklz6qbRshGTjY1MCffjbZVUo36Fyo5E5M=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=klVyz3m0VDeLLOfIs7HrprUi9FpmohyDzG67oI+VUrNv3o+mZMEFJu9PHzUqJXpG0
         MdwrnBwLXiNSxu2THf7++1SdQlsNvpN8UM2GzrKrRnBXuYv5o5CsgmgFQQfZvZQG+5
         /6fxmDOD9cFcu2zvBmOEF61HP0HWNKB8nKnZepuI+Yz59dO9k4vo55v718RbtodDp4
         sDdBgVp9TrsR/atrfqM/aKUBAK+Uz04/58I0YERX1rqCIYI8g5ArqB+ZS1YH8bFmZY
         fEbZfO+zTudAfi8aYpFOLAjzWELFl5+aYLd4v+lNnTR7Pe2eWjgCv25oZQ4svNbctS
         JsjfREJR7hJTA==
Subject: Re: [PATCH v5 2/2] drm/bridge: lvds-codec: Add support for pixel data
 sampling edge select
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20211017001204.299940-1-marex@denx.de>
 <20211017001204.299940-2-marex@denx.de> <YWxUB9y3qFzkfRR0@ravnborg.org>
 <075913ae-e5a0-3a9e-c928-55cae99ab0e5@denx.de>
 <YWxgKWXBpT6PyQO8@ravnborg.org>
From:   Marek Vasut <marex@denx.de>
Message-ID: <48c72f74-7be2-77d5-636c-0228f2bf0939@denx.de>
Date:   Sun, 17 Oct 2021 22:05:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YWxgKWXBpT6PyQO8@ravnborg.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/17/21 7:40 PM, Sam Ravnborg wrote:
> Hi Marek,
> 
> On Sun, Oct 17, 2021 at 07:29:51PM +0200, Marek Vasut wrote:
>> On 10/17/21 6:49 PM, Sam Ravnborg wrote:
>>
>> [...]
>>
>>>> +	/*
>>>> +	 * Encoder might sample data on different clock edge than the display,
>>>> +	 * for example OnSemi FIN3385 has a dedicated strapping pin to select
>>>> +	 * the sampling edge.
>>>> +	 */
>>>> +	if (lvds_codec->connector_type == DRM_MODE_CONNECTOR_LVDS &&
>>>> +	    !of_property_read_u32(dev->of_node, "pclk-sample", &val)) {
>>>> +		lvds_codec->timings.input_bus_flags = val ?
>>>> +			DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE :
>>>> +			DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE;
>>>> +	}
>>>> +
>>>>    	/*
>>>>    	 * The panel_bridge bridge is attached to the panel's of_node,
>>>>    	 * but we need a bridge attached to our of_node for our user
>>>>    	 * to look up.
>>>>    	 */
>>>>    	lvds_codec->bridge.of_node = dev->of_node;
>>>> +	lvds_codec->bridge.timings = &lvds_codec->timings;
>>> I do not understand how this will work. The only field that is set is timings.input_bus_flags
>>> but any user will see bridge.timings is set and will think this is all
>>> timing info.
>>>
>>> Maybe I just misses something obvious?
>>
>> Is there anything else in those timings that should be set ? See
>> include/drm/drm_bridge.h around line 640
>>
>> setup_time_ps/hold_time_ps/dual_link isn't supported by this driver, so it
>> is 0 or false anyway, i.e. no change.
> 
> Just me being confused with display_timings. Patch looks good.
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> 
> Ping me in a few days to apply it if there is no more feedback.

ACK
