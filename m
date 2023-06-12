Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2588E72BBEE
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 11:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232840AbjFLJVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 05:21:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232812AbjFLJU2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 05:20:28 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D1E555AF
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:13:08 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 148A980F53;
        Mon, 12 Jun 2023 11:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1686561186;
        bh=5YCO0654Itqgrf0uCoj5p0lBM0I4GVOJ/5sMCRIUu/E=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=s+EdMc43oXFoRvGLXrkBA/uJRTxABeTWEdbiy7fkezfwUbzU3jeDXHqswxWOSRoyD
         s37K4+w1x3ZkNiWRTFcpqkigt+j0FJT0LRD96PSjruRGlkvv2V/abxhFlGpZwCNfaH
         OrwvtcCGyuGyn5oiVEVC6l5xsq1rqmHcGy6BGp8fY4N4sq6fVG5Vh/dFzJmxH7xllL
         g5hihjh+K4yXbipt9oWy8FK9rQ4oQfW2TdLk8ywcpNDRYqxcLlM8zxgkEOmV9s6QxV
         4THAI2+lNMHdent/coKZQ3OdHm/ixp37Hz7ndVpp1d0yd8KOKBYlw5a5tnB4fk/dU/
         e0vh5lMg5eAaA==
Message-ID: <26cfd848-a29d-2b38-3c15-fdcda532bcef@denx.de>
Date:   Mon, 12 Jun 2023 11:13:05 +0200
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
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <c944123c-bcd8-89cf-c2cd-8d5742931f68@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/12/23 10:26, Arnaud POULIQUEN wrote:
> 
> 
> On 6/10/23 15:46, Marek Vasut wrote:
>> On 6/7/23 11:53, Arnaud POULIQUEN wrote:
>>
>> Hi,
>>
>> [...]
>>
>>>>>>>>> Rather than adding unused optional mailbox, I will more in favor
>>>>>>>>> of having a mbox_request_channel_byname_optional helper or
>>>>>>>>> something similar
>>>>>>>>
>>>>>>>> See above, I think it is better to have the mailbox described in DT
>>>>>>>> always and not use it (the user can always remove it), than to not
>>>>>>>> have it described on some boards and have it described on other
>>>>>>>> boards
>>>>>> (inconsistency).
>>>>>>>
>>>>>>> Adding it in the DT ( and especially in the Soc DTSI) can also be
>>>>>>> interpreted as "it is defined so you must use it". I would expect
>>>>>>> that the Bindings already provide the information to help user to add it
>>>> on need.
>>>>>>
>>>>>> Why should every single board add it separately and duplicate the
>>>>>> same stuff, if they can all start with it, and if anyone needs to
>>>>>> tweak the mailbox allocation, then they can do that in the board DT ?
>>>>>> I really don't like the duplication suggestion here.
>>>>>
>>>>> I was speaking about "detach mailbox. Here is what I would like to
>>>>> propose to you
>>>>>
>>>>> 1)  move all the mailbox declaration in the DTSI except "detach"
>>>>> 2) don't declare "detach" in boards DTS ( except ST board for legacy
>>>>> compliance)
>>>>> 3) as a next step we will have to fix the unexpected warning on the
>>>>>       "detach" mailbox.
>>>>
>>>> Why not make the mailbox available by default on all boards ?
>>>
>>> It has been introduced mainly to test the detach feature,
>>> on a second platform to help remoteproc maintainers for the review
>>> process. But the feature is not fully implemented on stm32mp1
>>> ( auto reboot of thye M4 on crash, appropriate resource table clean-up,...)
>>
>> This is a driver bug, unrelated to DT description, please just fix it.
> 
> No, it is a system usecase that depends on Hardware, M4 firmware, A7
> applications, ...
> The detach/re-attach is a quite complex feature that needs to understand
> the whole picture. As already mentioned above it as been introduced for
> test on upstream.
> 
>>
>>> I would prefer to remove it in ST board DT than add it in the DTSI.
>>> That said as mentioned for legacy support, better to keep for ST board.
>>
>> Why not remove it from ST boards if this was legacy test feature and is no
>> longer needed ?
> 
> If you can guaranty that this will not introduce regression on legacy, yes we can.

Then clearly the only way to avoid this fragmentation is to add it on 
all boards.

>>>> As far as I can tell, if the software is not using the detach mailbox, there
>>>> is no
>>>> downside, it would just be unused. User can always remove it in their DT if
>>>> really needed.
>>>
>>> The inverse it true, User can add it in their DT if really need.
>>
>> Is there a downside if this is enabled by default, yes or no ?
> 
> Yes, by doing this you impose that this channel is reserved for the detach.
> making it no more optional.

Not really, the user can still define whatever channels they need for 
their custom setup in their DT. The SoC DTSI should be just a default.

>>>> I believe once can build demos using the detach mailbox for boards with
>>>> stm32mp15xx not manufactured by ST, correct ?[]
>>>
>>> Everything could be possible...
>>> Once can want to replace the shutdown mailbox by the detach.
>>> Once can also build demo using the detach mailbox channel for another purpose.
>>>
>>> I quite confuse why you insist to declare this detach mailbox in the DTSI?
>>> Is there a strong constraint on your side?
>>
>> I just don't see any explanation why ST board(s) should be somehow special and
>> have the detach mailbox described in DT by default, while other boards would
>> require separate DT patch to use the detach mailbox first. That just reduces
>> usability of non-ST-manufactured boards and increases fragmentation. I do not
>> like that.
> 
> The "somehow special" should only be an internal M4 firmware  allowing to test
> the feature to help remoteproc maintainers to verify it on demand.
> But I can not know if someone in the community have another firmware using
> detach on the ST boards.
> Anyway what you propose here is that we impose it for all boards. Some boards
> would require separate DT patch to not use it. We just inverse the things...
> The difference is that I would not impose something optional.

I believe it is better to have single capable consistent default and let 
users remove the capabilities for specific application if needed, than 
to have fragmented inconsistent board-specific configurations where 
users have to first determine whether they need to patch them to add 
missing capabilities, and then possibly patch them, that's just a mess.

It also puts non-ST-manufactured boards into worse position.

> In term of fragmentation I can only see a specificity for the ST boards.As
> already said if you can ensure that this will not generate impact on legacy,
> it can be removed from the ST DT.
> 
> @Alex: any opinion on that?

[...]
