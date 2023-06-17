Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F014B73445B
	for <lists+devicetree@lfdr.de>; Sun, 18 Jun 2023 00:26:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232417AbjFQW0U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 18:26:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232065AbjFQW0T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 18:26:19 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E15DA10E0
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 15:26:16 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id DD8BD8474B;
        Sun, 18 Jun 2023 00:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1687040763;
        bh=sdG9ayzJa/8nhspUIwUpTDa4ZjlD+rL44Ygoe/d95IE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=jtTPMHYoC6af7TZHE9e4xxi2RmCaB+89ZJsxITeyHyBvPkV7ja5je74zAwSpvhsGC
         WcQJjrDgejVdEE5btUaz7oG3+CNmhCm8TZNcXZW1Uey3KrS5j4EUIkw82snFq8ItG4
         gq0QBRrGE1qzo7zgg05K8+H7C54sDvkmvulmHtXm9BMr2QYrOxlSxxVUNlGJ0PlkZh
         deUZMdXTFaW4mkCUHkxXH1HF6PwKAtSjBY6e9fmOuBIwfyLqfKUHYRUgq8PkPBUDAH
         SB3oD2AHCy72y83ZxMsFO5g68f/NM3zYoVoVUWoUW5GL2fZLEOYvPbLtQpItfaxipl
         /AXxdqLAQXZ7Q==
Message-ID: <63a9cb7a-0fbf-233f-ec25-03f4415c349e@denx.de>
Date:   Sat, 17 Jun 2023 16:34:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [Linux-stm32] [PATCH 1/5] ARM: dts: stm32: Add missing detach
 mailbox for emtrion emSBC-Argon
Content-Language: en-US
To:     Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>,
        Arnaud POULIQUEN <arnaud.pouliquen@st.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        "linux-stm32@st-md-mailman.stormreply.com" 
        <linux-stm32@st-md-mailman.stormreply.com>,
        "kernel@dh-electronics.com" <kernel@dh-electronics.com>
References: <20230518011246.438097-1-marex@denx.de>
 <PAXPR10MB471850924065C987981634C1F14B9@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <133c8b4a-8680-f613-807a-2d7931d0a186@denx.de>
 <PAXPR10MB4718D37242FF00D47DF0CEF1F1499@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <81f4574d-38c2-21f2-b947-d13e5fc99c60@denx.de>
 <PAXPR10MB471825B145645894D626F070F152A@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <0d304968-74c8-47ce-f87a-127449f36f4b@denx.de>
 <PAXPR10MB4718E8CE58A881DAE3983A27F153A@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <b65288f6-1d3d-424f-5df5-98e86cc51dec@denx.de>
 <c944123c-bcd8-89cf-c2cd-8d5742931f68@foss.st.com>
 <26cfd848-a29d-2b38-3c15-fdcda532bcef@denx.de>
 <5c3bbeb8-f0c1-46e4-009e-1cc3de64c06e@foss.st.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <5c3bbeb8-f0c1-46e4-009e-1cc3de64c06e@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/12/23 14:34, Arnaud POULIQUEN wrote:

Hi,

[...]

>>>>> I would prefer to remove it in ST board DT than add it in the DTSI.
>>>>> That said as mentioned for legacy support, better to keep for ST board.
>>>>
>>>> Why not remove it from ST boards if this was legacy test feature and is no
>>>> longer needed ?
>>>
>>> If you can guaranty that this will not introduce regression on legacy, yes we
>>> can.
>>
>> Then clearly the only way to avoid this fragmentation is to add it on all boards.
> 
> You can not avoid fragmentation here, the DT and the Cortex-M4 firmware are
> dependent, the M4 firmware is board dependent.
> For instance, if we introduce some new mailbox channels to support some virtio
> services should we also add it on all boards that embedd stm32mp15 chip..?

Yes, I believe so, as long as one can use cubemx to generate bsp for 
non-ST board which uses that functionality.

> For me no, as the M4 Firmware is board dependent.

[...]

>>>>>> I believe once can build demos using the detach mailbox for boards with
>>>>>> stm32mp15xx not manufactured by ST, correct ?[]
>>>>>
>>>>> Everything could be possible...
>>>>> Once can want to replace the shutdown mailbox by the detach.
>>>>> Once can also build demo using the detach mailbox channel for another purpose.
>>>>>
>>>>> I quite confuse why you insist to declare this detach mailbox in the DTSI?
>>>>> Is there a strong constraint on your side?
>>>>
>>>> I just don't see any explanation why ST board(s) should be somehow special and
>>>> have the detach mailbox described in DT by default, while other boards would
>>>> require separate DT patch to use the detach mailbox first. That just reduces
>>>> usability of non-ST-manufactured boards and increases fragmentation. I do not
>>>> like that.
>>>
>>> The "somehow special" should only be an internal M4 firmware  allowing to test
>>> the feature to help remoteproc maintainers to verify it on demand.
>>> But I can not know if someone in the community have another firmware using
>>> detach on the ST boards.
>>> Anyway what you propose here is that we impose it for all boards. Some boards
>>> would require separate DT patch to not use it. We just inverse the things...
>>> The difference is that I would not impose something optional.
>>
>> I believe it is better to have single capable consistent default and let users
>> remove the capabilities for specific application if needed, than to have
>> fragmented inconsistent board-specific configurations where users have to first
>> determine whether they need to patch them to add missing capabilities, and then
>> possibly patch them, that's just a mess.
> 
> 
> Be aware that to manage a coprocessor firmware this not sufficient so in any
> case user will have to patch the DT to assign peripherals to the Cortex-M4,
> update he memory regions,...

Not necessarily, a lot of the cubemx examples do use the same memory 
layout. So making it easy for user to evaluate the CM4 usage is the goal 
here. And that includes non-ST produced boards.

> It is a system usecase, not only the enable of a peripheral.That's why we have
> specific DT in downstream for M4 examples, to be able to support more examples
> and demos.
> 
>>
>> It also puts non-ST-manufactured boards into worse position.
> 
> What would you mean by worst position? As there is no example provided that
> would take advantage of the "detach", I don't understand your point.
> 
> The only argument I can see for generic is that the  proposed settings allow
> to run a Zephyr IPC sample, that could be cross-platform.
> So I would say we should first extend the M4 zephyr sample to implement the
> detach and then that might make sense.
> 
> Having said that, I'd rather not spend any more time on this subject.
> I've given some arguments, you've given others.
> I now propose to let Alex, as maintainer of stm32 DT, decide...

I agree, let's wait for Alex.
