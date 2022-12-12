Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E14364A066
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 14:24:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232647AbiLLNYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 08:24:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232633AbiLLNYk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 08:24:40 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D80A61080
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 05:24:38 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C43E284F68;
        Mon, 12 Dec 2022 14:24:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670851476;
        bh=oQ8Mq9cVRciyAMtvrqas/aJIEp0L9GmdMbZ0UxaSLLU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Aok6rSZr5jgIPaanEsXHgGx1AJ8Ap35zm3ckOKZcpXf4cSVU6oYSfV4vXZ90MpOKD
         7rELy6vfeeXcloKdTvFLkP1gl8+Wcdt00q6c3oIsRnSVNHTK6ox6VFEVeV1gAQp8lE
         XMjhIOuVVqmkip143FqyFKiBKWo8R8zjo2bOLbgSB9bO02g4cLSu628LeV9Mp23JGd
         Ohl+SuApgD0SpdGGVOpDeBWfjj9vJ1AKwluxeTAw8aQx1Lm0S0xoSk5q3wFVBEPi/j
         wQaoBPmF26CJ+SsnIjpoRMyxUuDGWwc8tfHwIgcvFyZ6FY6ooG2viOe7GeoH8wg2yH
         7NQMRFlGSb4QA==
Message-ID: <e45f363b-91e8-908e-aa2c-0b75fe5e25d4@denx.de>
Date:   Mon, 12 Dec 2022 13:50:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add enable
 delay property
To:     Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
 <45157029.fMDQidcC6G@steina-w> <6da2330d-516e-7dc4-a000-1e68c7f7887e@denx.de>
 <2735716.BEx9A2HvPv@steina-w> <c6f2cc52-41c6-028f-4d3f-e8a4d5d73dcd@denx.de>
 <9f8b1c17-0bc5-ae99-b7b1-cb2f52f9310d@kontron.de>
 <5f61cc70-9501-ee4e-010f-5188f87e3ef1@linaro.org>
 <8dc209df-8b69-d4a5-a056-b5aacdf41a14@kontron.de>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <8dc209df-8b69-d4a5-a056-b5aacdf41a14@kontron.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/12/22 13:29, Frieder Schrempf wrote:
> On 12.12.22 10:23, Krzysztof Kozlowski wrote:
>> On 12/12/2022 10:09, Frieder Schrempf wrote:
>>>>>> This does seem like a hardware bug right there, can you double-check
>>>>>> this with the hardware engineer ?
>>>>>
>>>>> Yep, checked with hardware engineer. An 470nF is attached, together
>>>>> with an
>>>>> open drain output and only the internal pull-up. So yes ~113ms rising
>>>>> time
>>>>> until 0.7 x VCC.
>>>>
>>>> I don't suppose you can have that capacitor reduced or better yet, some
>>>> external pull up added, can you ?
>>>
>>> Actually our HW engineers have implemented a similar RC circuit to
>>> provide a hardware delay for the EN signal. I think this is due to a
>>> design note in the datasheet (see chapter 7.4.1) and therefore it's
>>> probably widely spread.
>>
>> If I read section 7.4.1 correctly, it would be enough to just add delay
>> Ten=1ms instead of the capacitor, right? And that would be
>> device-specific. But if one chooses the capacitor solution, it becomes
>> now board specific.
> 
> Yes, seems like that's the case.

Can you still fix the board instead ? It would even save you on BOM.
