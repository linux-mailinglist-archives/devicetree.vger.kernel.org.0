Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1ED7A4EF9D0
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 20:25:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350989AbiDAS13 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 14:27:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350401AbiDAS12 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 14:27:28 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3D151AC710
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 11:25:38 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 07C58842CA;
        Fri,  1 Apr 2022 20:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648837531;
        bh=XX3/dORVYjGSc/6rQaCVo5APNbEVGR1F5PO+VN35/bU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=NxVdtmh2P+xGLyJ3awPbQoNp1vRGyHC7Rzw1D/+wg98iHXsSak2MFa14uibiGWdFG
         lPlMlCKKmVtqvqZGqEcYGECDDH6PR4Kug2sCb95ls17WvlqJKd3yZcem2iExpuUg3/
         fsw3E/v7rEqCLm9xqK6/SH5LVJlLDwHSyRKM1TP0anVJzQPQf+jYK4WOM8kdJnSLW+
         45rmmQ04KOQv+FjjdnH46286+PfJu/tnWGftnI+2BTBpjtTyHPrIl3iKU0SsPIS1ru
         EXwiJ7Hb9k+u+8yyEchqy8QvMIf7V1C/Pm6lpNJQvQEQQcQEG9Ry9fAyTNPTf9+41c
         OFPv+FA2anhMQ==
Message-ID: <30ea889f-f65e-e887-e230-935d6207c919@denx.de>
Date:   Fri, 1 Apr 2022 20:25:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Robert Foss <robert.foss@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        dri-devel <dri-devel@lists.freedesktop.org>
References: <20220323154823.839469-1-maxime@cerno.tech>
 <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
 <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de>
 <Ykc3wm5pqJIA1jCn@robh.at.kernel.org>
 <1fddec5f-5fb3-4ea0-a1e5-9d1b9e54de81@denx.de>
 <CAL_JsqLmin2qXdeNrvraAf=fGzttOAYxwFCUSbC5TeHYaN+LhQ@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <CAL_JsqLmin2qXdeNrvraAf=fGzttOAYxwFCUSbC5TeHYaN+LhQ@mail.gmail.com>
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

On 4/1/22 20:21, Rob Herring wrote:
> On Fri, Apr 1, 2022 at 1:06 PM Marek Vasut <marex@denx.de> wrote:
>>
>> On 4/1/22 19:34, Rob Herring wrote:
>>> On Fri, Apr 01, 2022 at 03:22:19AM +0200, Marek Vasut wrote:
>>>> On 4/1/22 01:52, Rob Herring wrote:
>>>>> On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
>>>>>> MIPI-DSI devices, if they are controlled through the bus itself, have to
>>>>>> be described as a child node of the controller they are attached to.
>>>>>>
>>>>>> Thus, there's no requirement on the controller having an OF-Graph output
>>>>>> port to model the data stream: it's assumed that it would go from the
>>>>>> parent to the child.
>>>>>>
>>>>>> However, some bridges controlled through the DSI bus still require an
>>>>>> input OF-Graph port, thus requiring a controller with an OF-Graph output
>>>>>> port. This prevents those bridges from being used with the controllers
>>>>>> that do not have one without any particular reason to.
>>>>>>
>>>>>> Let's drop that requirement.
>>>>>>
>>>>>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>>>>>> ---
>>>>>>     .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
>>>>>>     .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
>>>>>>     2 files changed, 2 deletions(-)
>>>>>>
>>>>>
>>>>> I tend to agree with port@0 not being needed and really like
>>>>> consistency.
>>>>
>>>> The consistent thing to do would be to always use port@0 and OF graph, no ?
>>>
>>> I guess it depends how wide our scope for consistency is. Just DSI bus
>>> controlled bridges? DSI panels? All bridges and panels? Any panel
>>> without a control interface has the same dilemma as those can be a child
>>> of the display controller (or bridge) and not even use OF graph.
>>
>> I would likely opt for the OF graph in all cases, panels, bridges,
>> controllers. Then it would be consistent.
>>
>>> All simple panels don't require 'port' either. That's presumably only
>>> consistent because we made a single schema. I'd assume 'non-simple'
>>> panels with their own schema are not consistent.
>>
>> Maybe we would start requiring that port even for simple panels ?
>> The port is physically there on that panel after all.
> 
> Fix this in all the dts files and then I'll agree. Though I think this
> ship has already sailed. I'd like to someday get to platforms without
> warnings and not just keep adding new warnings.

I doubt we can fix existing DTs, but can we at least require it for new 
DTs ?
