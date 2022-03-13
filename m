Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEF444D7822
	for <lists+devicetree@lfdr.de>; Sun, 13 Mar 2022 21:08:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235361AbiCMUJq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Mar 2022 16:09:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232809AbiCMUJq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Mar 2022 16:09:46 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9928A496BD
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 13:08:36 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 17416837E2;
        Sun, 13 Mar 2022 21:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1647202113;
        bh=w1jJZh9+R3ULASRh7kNzwXoMEt0pT3/PTMAk2m6tr3g=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=DqhrbbQj4RyjUZjlsz6ZzgDc5mmJ4jJKJkUS3NVHbUMwbQAgl1i+N9GCljHvZG4MC
         AHlUht/m9Z4zs5+rKiiKQavk1MGrHmh/bK1DS9hnNHHZwCgcAhlX4CtrHN2sph/dMN
         xPOzFWiCAngAzv4jDo2qeTGo+j/10RJrPCbn6S+K50F2bL+/nGENQCW9tLiHTCKaWh
         x0QJ5Rahh1gJuOSb1SXBlhDMpH/nb7h+xa4/kw6jD0PY7z8UIFpDT/rGBxtHsKbSrQ
         zwyEBoOANmRgvW7Mwvce9ibAGLIX0/wfa5jcwMwsD9Zu3JVxL92Mewjs9dtX+zmRNM
         7yceJfyMwY0uQ==
Message-ID: <9bd6ba77-6cf0-2101-ae40-8f1f76a942cb@denx.de>
Date:   Sun, 13 Mar 2022 21:08:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: ldb: Implement simple
 NXP i.MX8M LDB bridge
Content-Language: en-US
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        dri-devel@lists.freedesktop.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>,
        Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220313123852.207257-1-marex@denx.de>
 <9bda9a09-ec0a-0b6f-56b1-dff18821aa5d@kernel.org>
 <a8a0278c-92f0-bd9c-927f-b8ee729251af@denx.de>
 <9a5938fa-3783-9e5a-74f0-639372480e4a@kernel.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <9a5938fa-3783-9e5a-74f0-639372480e4a@kernel.org>
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

On 3/13/22 18:50, Krzysztof Kozlowski wrote:
> On 13/03/2022 18:09, Marek Vasut wrote:
>> On 3/13/22 16:47, Krzysztof Kozlowski wrote:
>>
>> Hi,
>>
>> [...]
>>
>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
>>>> new file mode 100644
>>>> index 0000000000000..a05dd05547836
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
>>>> @@ -0,0 +1,99 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/display/bridge/nxp,ldb.yaml#
>>>
>>> In title, description and commit msg you point this is specific to
>>> i.MX8M, so maybe reflect it in the file name as well.
>>
>> That's how it is so far, however NXP does recycle their IPs quite a bit
>> so I don't want to encode the SoC type into the bindings file name. I do
>> expect them to re-use this bridge somewhere else sooner rather than later.
>>
>> [...]
>>
>> The rest is fixed.
>>
>> [...]
>>
>>>> +examples:
>>>> +  - |
>>>> +    #include <dt-bindings/clock/imx8mp-clock.h>
>>>> +
>>>> +    lvds-ldb {
>>>
>>> Generic node name, so "bridge" or "display-bridge"
>>>
>>>> +        #address-cells = <0>;
>>>> +        #size-cells = <0>;
>>>
>>> Why do you need address and size cells? This will complain if you test
>>> your bindings with proper compatible.
>>
>> Because the subnodes of this bridge have no dimension, so address/size
>> cells = 0.
>>
>> I don't understand the second part about "proper compatible", can you
>> elaborate ?
> 
> You have wrong compatible in example and in bindings, so you do not see
> the error of address/size cells.
> 
> They are also not required in your example, since you do not have unit
> address. Otherwise your lvds-ldb node would be wrong (see its
> address/size cells).
> 
> If you supply address-cells you should see a W=1 warning:
> #address-cells/#size-cells without "ranges" or child "reg" property

Ah, right, both are fixed now. I'll wait a bit for more feedback esp. on 
the bridge driver and send a V2.
