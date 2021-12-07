Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F9D346C1D5
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 18:32:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240042AbhLGRgO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 12:36:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240022AbhLGRgN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 12:36:13 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B81C061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 09:32:43 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A5D7380F89;
        Tue,  7 Dec 2021 18:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1638898359;
        bh=R14pY5fKexB5V4iFXiIjPZh5AI0WOc88sYxX08+58fM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=vyerqFnTMjH4hj6IZBO3i5mH9ejS/HhEG4/tG5a8CkDExOJwS4WYb93PNoet8IWek
         gjorQOtPT+hTqBTpVOyROR0ItUYj6NFwJ4icqrr01tnvkilM1HGJ+sAi4w1jZ7ujAk
         +vnsPRoLYjkgcOjTaQk4hAErWMw0GxsG2mIxB0G5QTIm+yZVpssbyCI9TUSzRMqON/
         A7LupgadDWqOflnxj0Ak/yazBTbaCakNDCpENfYcBQSdPMTQaY8+RHUW+7pFj4rdLm
         eQmZ1O5DgKJlZMgKBhfKpcGKGGulQ3BxcKYas3+75eGJBy+nvn4cafXg1jV+HaIFFR
         ZhwAjSVd53r5w==
Message-ID: <df2e18b3-d35a-2079-5f7b-b2574cbb46fd@denx.de>
Date:   Tue, 7 Dec 2021 18:32:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 1/4] dt-bindings: display: bridge: tc358867: Document DPI
 output support
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Jonas Karlman <jonas@kwiboo.se>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
References: <20211127032405.283435-1-marex@denx.de>
 <Ya+PRMvq3cjJ46s/@pendragon.ideasonboard.com>
 <1a7967f0-ed4b-9cd2-28c8-eb9d181448ae@denx.de>
 <Ya+T7zPigqtBzdR+@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <Ya+T7zPigqtBzdR+@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/7/21 18:03, Laurent Pinchart wrote:
> On Tue, Dec 07, 2021 at 05:47:29PM +0100, Marek Vasut wrote:
>> On 12/7/21 17:43, Laurent Pinchart wrote:
>>
>> [...]
>>
>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>>>> index f1541cc05297..5cfda6f2ba69 100644
>>>> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>>>> @@ -61,8 +61,8 @@ properties:
>>>>          port@1:
>>>>            $ref: /schemas/graph.yaml#/properties/port
>>>>            description: |
>>>> -            DPI input port. The remote endpoint phandle should be a
>>>> -            reference to a valid DPI output endpoint node
>>>> +            DPI input/output port. The remote endpoint phandle should be a
>>>> +            reference to a valid DPI output or input endpoint node.
>>>
>>> I assume the mode of operation (input or output) will be fixed for a
>>> given hardware design. Isn't this something that should be recorded in
>>> DT ? It would simplify configuration of the device in the driver.
>>
>> Currently the configuration (DSI-to-DPI / DPI-to-eDP) is inferred from
>> the presence of DPI panel. If DPI panel present, DSI-to-DPI, else,
>> DPI-to-eDP.
> 
> I've had a look at the driver side, and it seems to complicate things
> quite a bit. It seems that specifying the mode of operation explicitly
> in DT could make software implementations quite a bit simpler.

Do you have any specific suggestion ? I explored multiple options while 
writing that DSI-to-DPI driver code, this one was the simplest and least 
redundant one.
