Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D26FF4BAB5D
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 21:58:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243654AbiBQU5o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 15:57:44 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:46068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234111AbiBQU5o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 15:57:44 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 173BA26104
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 12:57:28 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 22CFC83B56;
        Thu, 17 Feb 2022 21:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1645131446;
        bh=5TKv94F97yxxUt6cvOAuvZsbqYTqLgFqqasgeP0zFn4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=hIvk6EbLvMp3Oq0RuT2izEd4mq8w4GPs4HzfKqk3a1y6y21FJEHPaXsJ9s7N0MwVw
         yI1EiASu16oX09NNx9B9sDf9RcjcxhrPMeDPnBn1pUWruAua/bDwkEVb5Pzea2R0gV
         wrnnOjeHJQwd35/yySYOB36eofQG80/wd3Jicu3QJ3LJ87b32Bvwg9l39bASlSowfi
         y/XxBwm+9v7cXxEoXsB8MrmLr6eQM6t5K2Y5+qZ6k08Yf23D4yH+fBfT9+0ReQ21FP
         u24iUoAdCVJBtJEena0g4HVwujJkP3N3YNUCMHmAMJnTH+CoejCFdu16rLP9/v4D6d
         NzdiCFPDZVVhw==
Message-ID: <b9877f33-af64-9ac5-c655-54872bb88459@denx.de>
Date:   Thu, 17 Feb 2022 21:57:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 1/4] dt-bindings: display: bridge: tc358867: Document DPI
 output support
Content-Language: en-US
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        dri-devel@lists.freedesktop.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
References: <20211127032405.283435-1-marex@denx.de>
 <Ya+PRMvq3cjJ46s/@pendragon.ideasonboard.com>
 <1a7967f0-ed4b-9cd2-28c8-eb9d181448ae@denx.de>
 <Ya+T7zPigqtBzdR+@pendragon.ideasonboard.com>
 <df2e18b3-d35a-2079-5f7b-b2574cbb46fd@denx.de>
 <20220203122359.g3rvyzxcz5szkis2@houat>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220203122359.g3rvyzxcz5szkis2@houat>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/3/22 13:23, Maxime Ripard wrote:
> On Tue, Dec 07, 2021 at 06:32:38PM +0100, Marek Vasut wrote:
>> On 12/7/21 18:03, Laurent Pinchart wrote:
>>> On Tue, Dec 07, 2021 at 05:47:29PM +0100, Marek Vasut wrote:
>>>> On 12/7/21 17:43, Laurent Pinchart wrote:
>>>>
>>>> [...]
>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>>>>>> index f1541cc05297..5cfda6f2ba69 100644
>>>>>> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>>>>>> @@ -61,8 +61,8 @@ properties:
>>>>>>           port@1:
>>>>>>             $ref: /schemas/graph.yaml#/properties/port
>>>>>>             description: |
>>>>>> -            DPI input port. The remote endpoint phandle should be a
>>>>>> -            reference to a valid DPI output endpoint node
>>>>>> +            DPI input/output port. The remote endpoint phandle should be a
>>>>>> +            reference to a valid DPI output or input endpoint node.
>>>>>
>>>>> I assume the mode of operation (input or output) will be fixed for a
>>>>> given hardware design. Isn't this something that should be recorded in
>>>>> DT ? It would simplify configuration of the device in the driver.
>>>>
>>>> Currently the configuration (DSI-to-DPI / DPI-to-eDP) is inferred from
>>>> the presence of DPI panel. If DPI panel present, DSI-to-DPI, else,
>>>> DPI-to-eDP.
>>>
>>> I've had a look at the driver side, and it seems to complicate things
>>> quite a bit. It seems that specifying the mode of operation explicitly
>>> in DT could make software implementations quite a bit simpler.
>>
>> Do you have any specific suggestion ? I explored multiple options while
>> writing that DSI-to-DPI driver code, this one was the simplest and least
>> redundant one.
> 
> Can we leverage the bus-type property of endpoints?

We could, but should we really add a property only for the sake of 
adding a property ? The driver can figure out whether this endpoint is 
DSI-input or DSI-output without such a new property.

Now that I look at the datasheet, the logic can be even simpler:

- If port@0 not connected
   scanout -> port@1 (DPI input) -> port@2 (eDP output) -> panel

- If port@1 not connected
   scanout -> port@0 (DSI input) -> port@2 (eDP output) -> panel

- If port@2 not connected
   scanout -> port@0 (DSI input) -> port@1 (DPI output) -> panel

So with this kind of test in the driver, the driver can determine how 
the TC bridge is wired, without any extra props.
